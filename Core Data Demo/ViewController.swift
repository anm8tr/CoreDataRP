//
//  ViewController.swift
//  Core Data Demo
//
//  Created by Richard Garrison on 5/16/17.
//  Copyright © 2017 Richard Garrison. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDelegate = UIApplication.share().delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        newUser.setValue("rob", forKey: "username")
        newUser.setValue("myPass", forKey: "password")
        newUser.setValue(35, forKey: "age")
        
        do {
            
            try context.save()
            
            print("Saved")
            
        } catch {
            
            print("There was an error")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

