//
//  ViewController.swift
//  Animation
//
//  Created by 傅珊珊 on 16/1/31.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    @IBOutlet weak var alienImage: UIImageView!
    
    @IBAction func updateImage(sender: AnyObject) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
        
    }

    func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter++
        }
        
        alienImage.image = UIImage(named: "frame\(counter).png")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    override func viewDidLayoutSubviews() {
        alienImage.frame = CGRectMake(100, 20, 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: {() -> Void in
            self.alienImage.frame = CGRectMake(100, 20, 0, 0)
        })
    }
    */
    
    
    
    
    
    
    
    
    
}

