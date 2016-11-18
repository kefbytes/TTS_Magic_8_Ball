//
//  ViewController.swift
//  Magic_8_Ball
//
//  Created by Franks, Kent on 11/7/16.
//  Copyright © 2016 Franks, Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    
    let answers = ["Yes", "No", "Maybe", "Try Again Later", "Seriously", "Why would you ask such a silly question"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func askAction(_ sender: Any) {
        
        // Add random functionality
        let randomNum:UInt32 = arc4random_uniform(UInt32(answers.count))
        answerLabel.text = answers[Int(randomNum)]

    }

}

