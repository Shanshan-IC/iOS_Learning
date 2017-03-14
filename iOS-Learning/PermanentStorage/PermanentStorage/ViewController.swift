//
//  ViewController.swift
//  PermanentStorage
//
//  Created by 傅珊珊 on 16/1/30.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSUserDefaults.standardUserDefaults().setObject("Rob", forKey: "name")
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        
        print(userName)
        
        let arr = [1, 2, 3, 4, 5]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let returnArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for x in returnArray {
            print(x)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

