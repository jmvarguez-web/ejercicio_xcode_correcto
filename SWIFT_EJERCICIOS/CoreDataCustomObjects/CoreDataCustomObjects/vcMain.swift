//
//  vcMain.swift
//  CoreDataCustomObjects
//
//  Created by jmvarguez on 6/14/15.
//  Copyright (c) 2015 jmvarguez. All rights reserved.
//

import UIKit
import CoreData

class vcMain: UIViewController {
    
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func btnSave_Clicked(sender: AnyObject) {
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let ent = NSEntityDescription.entityForName("Users", inManagedObjectContext: context)
        
        var newUser = Users(entity: ent!, insertIntoManagedObjectContext: context)
        newUser.username = txtUsername.text
        newUser.password = txtPassword.text
        
        context.save(nil)
        println(newUser)
        println("Objeto guardado")
        
        
        
    }
    
    @IBAction func btnLoad_Clicked(sender: AnyObject) {
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let request = NSFetchRequest(entityName: "Users")
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "username = %@", txtUsername.text)
        
        var resutls:NSArray = context.executeFetchRequest(request, error: nil)!
        
        if resutls.count > 0 {
            
            for user in resutls{
                
                var thisUser = user as! Users
                println(thisUser.toString())
                thisUser.addFunnyPrefix("HaHa :)")
                println(thisUser.toString())
                
                
            }
            
        }else
        {
            
            println("No se encontraron resultados")
            
        }
        
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
}
