//
//  ViewController.swift
//  You are awesome!
//
//  Created by Lucas  Pomeroy  on 1/20/20.
//  Copyright © 2020 Lucas Pomeroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
   
    var index = -1
    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonPressed(_ sender: UIButton) {
        
        imageView.image=UIImage(named: "image0")
        
        let messages = ["You are Awesome!",
        "You are Great!",
        "You are Fantastic!",
        "When the Genius Bar needs help, they call you!",
        "You are da bomb!",
        "Hey, Fabulous",
        "You are tremendous!",
        "You've got the design skills of Jonny Ive",
        "I can't wait to download your app!"
        ]
        
        var newIndex: Int
        repeat{
            newIndex=Int.random(in: 0..<messages.count)
        }while newIndex==index
        
        index=newIndex
        messageLabel.text = messages[index]
        
        
        
        
        
    }
    

}

