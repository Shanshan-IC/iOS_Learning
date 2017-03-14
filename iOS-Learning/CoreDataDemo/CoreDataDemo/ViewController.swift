//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by 傅珊珊 on 16/2/3.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context:NSManagedObjectContext = appDel.managedObjectContext
        
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as! NSManagedObject
        
        newUser.setValue("Rob", forKey: "username")
        newUser.setValue("pass123", forKey: "passport")
        context.save("nil")
        
        let requestion = NSFetchRequest(entityName: "Users")
        
        var results = context.executeFetchRequest(requestion, error: nil)
        
            
        if results!.count > 0 {
                for result in results! {
                    
                    if let pass = result.valutForKey("username")! {
                        print(pass)
                    }
                    
                }
        } else {
            print("No result")
        }
        
        
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

