//
//  signupContainerViewController.swift
//  week3_part4
//
//  Created by Kyle Lu on 2024/1/25.
//

import UIKit

class signupViewController: UIViewController {
    
    
    @IBOutlet weak var signUpAccountTextField: UITextField!
    @IBOutlet weak var signUpPasswordTextField: UITextField!
    @IBOutlet weak var signUpCheckTextField: UITextField!
    

    enum signupError: Error {
    case accountIsEmptyProblem
    case passwordIsEmptyProblem
    case checkIsEmptyProblem
    }
    
    func signupErrorFunc() throws {
        guard let accountText = signUpAccountTextField.text, !accountText.isEmpty else {
            throw signupError.accountIsEmptyProblem
        }
        guard let passwordText = signUpPasswordTextField.text, !passwordText.isEmpty else {
            throw signupError.passwordIsEmptyProblem
        }
        guard let checkText = signUpCheckTextField.text, !checkText.isEmpty else {
            throw signupError.checkIsEmptyProblem
        }
    }
    
    func signupButtonTapped() -> Bool {
        do {
            try signupErrorFunc()
            print("sign up success")
            return true
        } catch let error as signupError {
            var errorMessage = ""
            switch error {
            case .accountIsEmptyProblem:
                errorMessage = "Account should not be empty."
            case .passwordIsEmptyProblem:
                errorMessage = "Password should not be empty."
            case .checkIsEmptyProblem:
                errorMessage = "Check Password should not be empty."
            }

            // 出現警告視窗
            showAlert(message: errorMessage)
            return false
        } catch {
            // 預設錯誤
            showAlert(message: "Sign up fail")
            return false
        }
    }

    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Sure", style: .default, handler: nil))
        present(alert, animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}
