//
//  TaskManager.swift
//  My Task List
//
//  Created by jmvarguez on 6/14/15.
//  Copyright (c) 2015 jmvarguez. All rights reserved.
//

import UIKit

var taskMgr : TaskManager =  TaskManager()

struct task {
    var name = "Un Named"
    var desc = "un Described"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
        
    }
   
}
