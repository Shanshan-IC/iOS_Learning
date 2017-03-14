//
//  ViewController.swift
//  DownloadWebContent
//
//  Created by 傅珊珊 on 16/1/30.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string:"http://stackoverflow.com/")!
        
        webView.loadRequest(NSURLRequest(URL: url))
        
        
        
        
        /*
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) {
            (data, response, error) -> Void in
            //will happen when task comletes
            
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                })
                
            } else {
                //show error message
                
            }
        }
        task.resume()*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

