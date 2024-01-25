//
//  ViewController.swift
//  week3_part4
//
//  Created by Kyle Lu on 2024/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func changeStatus(_ sender: UISegmentedControl) {
        
        // Log in
        switch sender.selectedSegmentIndex  {
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
    
    @IBOutlet weak var accountTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var checkTextField: UITextField!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        // Log in
        
        
        // Sign up
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.bringSubviewToFront(loginContainer)
    }


}

