//
//  Users.swift
//  CoreDataCustomObjects
//
//  Created by jmvarguez on 6/14/15.
//  Copyright (c) 2015 jmvarguez. All rights reserved.
//

import UIKit
import CoreData

@objc(Users)
class Users: NSManagedObject {
    
    @NSManaged var username:String
    @NSManaged var password:String
   
    func toString() -> String{
        return "The username is \(username) their password is \(password)"
    }
    
    func addFunnyPrefix(prefix: String){
        // username = "\(prefix)\(username)"
        username = prefix + username
        
    }
    
    func  ValidPassword(inputPassword: String)-> Bool{
        
        if inputPassword == password{
            return true
        }
        else {
            return false
        }
        
    }
}
