//
//  ViewController.swift
//  Hello World
//
//  Created by 傅珊珊 on 16/1/27.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func submit(sender: AnyObject) {
        print("Button tapped")
        label.text = textField.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print("Hello Rob!")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

