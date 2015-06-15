//
//  SecondViewController.swift
//  My Task List
//
//  Created by jmvarguez on 6/14/15.
//  Copyright (c) 2015 jmvarguez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddTask(sender: UIButton){
        taskMgr.addTask(txtDesc.text, desc: txtDesc.text)
        
        
         self.view.endEditing(true)
        txtDesc.text = ""
        txtTask.text = ""
        
        self.tabBarController?.selectedIndex = 0
    }
    
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
        
    }


}

