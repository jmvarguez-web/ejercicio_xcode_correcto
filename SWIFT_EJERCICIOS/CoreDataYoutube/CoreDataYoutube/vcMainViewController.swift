//
//  vcMainViewController.swift
//  CoreDataYoutube
//
//  Created by jmvarguez on 6/14/15.
//  Copyright (c) 2015 jmvarguez. All rights reserved.
//

import UIKit
import CoreData

class vcMainViewController: UIViewController {
    
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func btnSave(sender: AnyObject) {
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        var context:NSManagedObjectContext = appDel.managedObjectContext!
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as! NSManagedObject
        
        newUser.setValue("" + txtUserName.text, forKey: "username")
        newUser.setValue("" + txtPassword.text, forKey: "password")
        context.save(nil)
       
        println(newUser)
        println("Objeto guardado")
        
        
    }
    
    @IBAction func btnLoad(sender: AnyObject) {
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        var context:NSManagedObjectContext = appDel.managedObjectContext!
        
        var request = NSFetchRequest(entityName: "Users")
        request.returnsObjectsAsFaults = false
        
        
        request.predicate = NSPredicate(format: "username = %@", "" + txtUserName.text)
        var results:NSArray = context.executeFetchRequest(request, error: nil)!
        
        
        if (results.count > 0)
        {
            var res = results[0] as! NSManagedObject
            txtUserName.text = res.valueForKey("username") as! String
            txtPassword.text = res.valueForKey("password") as! String
            //for res in results{
            // println(res)
            //}
            
        }else
        {
            println("0 Resultados retornados")
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
