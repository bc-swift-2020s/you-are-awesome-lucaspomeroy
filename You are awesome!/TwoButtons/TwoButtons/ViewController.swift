//
//  ViewController.swift
//  TwoButtons
//
//  Created by Lucas  Pomeroy  on 1/21/20.
//  Copyright © 2020 Lucas Pomeroy. All rights reserved.
//

import UIKit
var sum = 0
class ViewController: UIViewController {

    @IBOutlet weak var sumLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusTwo(_ sender: UIButton) {
        sum=sum+2
        sumLabel.text=String(sum)
    }
    
    @IBAction func plusOne(_ sender: UIButton) {
        sum=sum+1
        sumLabel.text=String(sum)
    }
}

