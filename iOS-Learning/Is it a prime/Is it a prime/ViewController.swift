//
//  ViewController.swift
//  Is it a prime
//
//  Created by 傅珊珊 on 16/1/27.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultField: UILabel!
    
    @IBAction func isPrime(sender: AnyObject) {
        if let number = Int(numberTextField.text!){
            var isPrime = true
            if number == 1 {
                isPrime = false
            }
            if number != 2 && number != 1 {
                for var n = 2; n < number; n++ {
                    if number % n == 0 {
                        isPrime = false
                        
                    }
                }
                print(isPrime)
            }
            if isPrime {
                resultField.text = "\(number) is a prime"
            }else {
                resultField.text = "\(number) is not a prime"
            }
        }else {
            resultField.text = "Please enter a number"
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

