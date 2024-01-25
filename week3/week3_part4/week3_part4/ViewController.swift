//
//  ViewController.swift
//  week3_part4
//
//  Created by Kyle Lu on 2024/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func changeStatus(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkLabel.textColor = UIColor.gray
            checkTextField.backgroundColor = UIColor.darkGray
            checkTextField.isEnabled = false
        } else {
            checkLabel.textColor = UIColor.black
            checkTextField.isEnabled = true
            checkTextField.backgroundColor = UIColor.white
        }
        
    }
    
    @IBOutlet weak var accountTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var checkTextField: UITextField!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

