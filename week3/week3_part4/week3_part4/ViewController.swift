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
    

    func changeStatusAppearance()  {
        // 外觀
        // 外框為黑色
        changeStatusOutlet.layer.borderColor = UIColor.black.cgColor
        changeStatusOutlet.layer.borderWidth = 1
        
        changeStatusOutlet.selectedSegmentTintColor = .black
        // 被選中的文字是白色
        changeStatusOutlet.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
         
    override func viewDidLoad() {
        super.viewDidLoad()
        // 這裡要放 function 因此把設定外觀獨立為 function，作為初始畫面
        changeStatusAppearance()
            self.view.bringSubviewToFront(loginContainer)
    }
    
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
                    print("Login fail")
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
    
}

    

