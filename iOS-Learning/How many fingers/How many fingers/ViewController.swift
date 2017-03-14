//
//  ViewController.swift
//  How many fingers
//
//  Created by 傅珊珊 on 16/1/27.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessTestField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        let diceRoll = String(arc4random_uniform(6))
        
        if diceRoll == userGuessTestField.text {
            resultLabel.text = "You are right!"
        }else {
            resultLabel.text = "Wrong! It was a " + diceRoll
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

