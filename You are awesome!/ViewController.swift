//
//  ViewController.swift
//  You are awesome!
//
//  Created by Lucas  Pomeroy  on 1/20/20.
//  Copyright © 2020 Lucas Pomeroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonPressed1(_ sender: UIButton) {
        
        if messageLabel.text == "You Got Peanut Butter in my Chocolate!" {messageLabel.text = "You Got Choclate in my Peanut Butter!"
            messageLabel.textColor=UIColor.orange
            messageLabel.textAlignment = NSTextAlignment.right
            
        }else {messageLabel.text="You Got Peanut Butter in my Chocolate!"
            messageLabel.textColor=UIColor.brown
              messageLabel.textAlignment = NSTextAlignment.left
        }
        
        
        
    }
    

}

