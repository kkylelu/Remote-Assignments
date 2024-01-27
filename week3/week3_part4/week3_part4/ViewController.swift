//
//  ViewController.swift
//  week3_part4
//
//  Created by Kyle Lu on 2024/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    var loginViewController: loginViewController?
    var signupViewController: signupViewController?
    
    @IBOutlet weak var changeStatusOutlet: UISegmentedControl!
    
         
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // segment control 外觀設定
        
        // 外框為黑色
        changeStatusOutlet.layer.borderColor = UIColor.black.cgColor
        changeStatusOutlet.layer.borderWidth = 1
        self.view.bringSubviewToFront(loginContainer)
        
        // 沒被選中的背景為白色圖片
        let whiteBackgroundImage = UIImage(color: .white, size: CGSize(width: 1, height: 32))
        changeStatusOutlet.setBackgroundImage(whiteBackgroundImage, for: .normal, barMetrics: .default)
        changeStatusOutlet.setBackgroundImage(whiteBackgroundImage, for: .selected, barMetrics: .default)
        
        // 選中的背景色為黑色
        let blackBackgroundImage = UIImage(color: .black, size: CGSize(width: 1, height: 32))
        changeStatusOutlet.setBackgroundImage(blackBackgroundImage, for: .selected, barMetrics: .default)
        
        // 沒被點選的文字為黑色
        let normalTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        changeStatusOutlet.setTitleTextAttributes(normalTextAttributes, for: .normal)
        
        // 被點選的文字為白色
        let selectedTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        changeStatusOutlet.setTitleTextAttributes(selectedTextAttributes, for: .selected)
        
    }
    
    // 將 logincontroller 資料傳過來
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let loginVC = segue.destination as? loginViewController {
            self.loginViewController = loginVC
        }else if let signupVC = segue.destination as? signupViewController {
            self.signupViewController = signupVC
        }
    }
    
    @IBAction func changeStatus(_ sender: UISegmentedControl) {
        
        // Log in
        switch changeStatusOutlet.selectedSegmentIndex  {
        case 0:
            self.view.bringSubviewToFront(loginContainer)
        case 1:
            self.view.bringSubviewToFront(signUpContainer)
        default:
            break
        }
        
    }
    
    @IBOutlet weak var loginContainer: UIView!
    @IBOutlet weak var signUpContainer: UIView!
    
    
    // log in 正確帳密
    func checkLogin(account: String, password: String) -> Bool {
        return account == "appworks_school" && password == "1234"
    }
    
    @IBAction func mainButton(_ sender: Any) {
        switch changeStatusOutlet.selectedSegmentIndex {
        case 0 : // Log in
            if let loginVC = loginViewController {
                // 用 if let 避免 app 閃退
                let success = loginVC.loginTapped()
                if success {
                    print("Login!")
                } else {
                    showAlert(message: "Login fail")
                    
                }
            }
        case 1: // Sign up
            if let signupVC = signupViewController {
                // 用 if let 避免 app 閃退
                let success = signupVC.signupButtonTapped()
                if success {
                    print("sign up")
                } else {
                    print("signup fail")
                }
            }
            
        default :
            break
        }
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Sure", style: .default, handler: nil))
        present(alert, animated: true)
    }
}

// iOS13 之後要用 Extension 產生白色背景圖片給 segment control
extension UIImage {
    convenience init?(color: UIColor, size: CGSize) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 1.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}

