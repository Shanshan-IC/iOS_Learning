//
//  ViewController.swift
//  Stopwatch
//
//  Created by 傅珊珊 on 16/1/28.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    var timer = NSTimer()
    
    func increaseTimer() {
        time++
        Timelabel.text = String(time)
    }
    
    @IBOutlet weak var Timelabel: UILabel!
    
    @IBAction func Play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "increaseTimer", userInfo: nil, repeats: true)
    }
    
    @IBAction func Pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func Reset(sender: AnyObject) {
        timer.invalidate()
        time = 0
        Timelabel.text = "0"
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

