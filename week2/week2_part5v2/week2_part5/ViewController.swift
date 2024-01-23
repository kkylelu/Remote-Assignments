//
//  ViewController.swift
//  week2_part5
//
//  Created by Kyle Lu on 2024/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let funFact = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
            "Contrary to popular belief, Lorem Ipsum is not simply random text.",
            "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
            "looked up one of the more obscure Latin words, consectetur",
            "from a Lorem Ipsum passage, and going through the cities of the word",
            "This book is a treatise on the theory of ethics, very popular during the.",
            "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
    ]
    
    // 文字和背景限制 7 種顏色
    let textColor = [UIColor.systemRed,
                     UIColor.systemOrange,
                     UIColor.systemYellow,
                     UIColor.systemGreen,
                     UIColor.systemBlue,
                     UIColor.systemIndigo,
                     UIColor.systemPurple
                 ]
    let backgroundColors = [
        UIColor.systemRed,
        UIColor.systemOrange,
        UIColor.systemYellow,
        UIColor.systemGreen,
        UIColor.systemBlue,
        UIColor.systemIndigo,
        UIColor.systemPurple
    ]
      
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBAction func theButton(_ sender: Any) {
    
        // 題目隨機
        funFactLabel.text = funFact.randomElement()
        
        // text 顏色隨機
        let randomColor = textColor.randomElement()
        let viewBackGroundColor = view.backgroundColor
        
                
        // 再把顏色分配給三種 text
        titleLabel.textColor = randomColor
        funFactLabel.textColor = randomColor
        myButton.setTitleColor(randomColor, for: .normal)
                
        
        // 分配背景顏色
        view.backgroundColor = backgroundColors.randomElement()
        
        
    }
    
    
}


