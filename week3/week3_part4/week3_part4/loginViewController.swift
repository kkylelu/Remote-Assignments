//
//  loginContainerViewController.swift
//  week3_part4
//
//  Created by Kyle Lu on 2024/1/25.
//

import UIKit


class loginViewController: UIViewController {
    
    @IBOutlet weak var loginAccountTextField: UITextField!
    @IBOutlet weak var loginPasswordTextField: UITextField!
    
    func loginTapped() -> Bool {
        let account = loginAccountTextField.text ?? ""
        let password = loginPasswordTextField.text ?? ""
        return account == "appworks_school" && password == "1234"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
}
