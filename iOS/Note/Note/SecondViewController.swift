//
//  SecondViewController.swift
//  Note
//
//  Created by 傅珊珊 on 16/2/8.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var noteTitle: UITextField!
    
    
    @IBOutlet weak var noteContext: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func done(sender: UIBarButtonItem) {
        Manager.addNote(noteTitle.text!, description:noteContext.text!)
        self.view.endEditing(true)
        noteTitle.text = " "
        noteContext.text = " "
        self.tabBarController?.selectedIndex = 0
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
