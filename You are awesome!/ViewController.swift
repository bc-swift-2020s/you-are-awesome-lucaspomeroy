//
//  ViewController.swift
//  You are awesome!
//
//  Created by Lucas  Pomeroy  on 1/20/20.
//  Copyright © 2020 Lucas Pomeroy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
   
    
    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let totalImages = 9
    var messageNumber = 0
    var imageNumber = 0
    var audioPlayer = AVAudioPlayer()

    @IBAction func myButtonPressed(_ sender: UIButton) {
        
        
        
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
        
        
        var newMessageNumber = Int.random(in: 0...messages.count-1)
        
        while messageNumber == newMessageNumber {
            newMessageNumber=Int.random(in: 0...messages.count-1)
        }
        messageNumber = newMessageNumber
        messageLabel.text=messages[messageNumber]
        
        var newImageNumber = (Int.random(in: 0...9))
        
        while imageNumber == newImageNumber{
            newImageNumber = (Int.random(in: 0...9))
        }
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0"){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription)")
            }
            
        } else {print("Error loading sound Data")}
        
        
    
        
    }
    

}

