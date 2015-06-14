//
//  FirstViewController.swift
//  Mis Notas
//
//  Created by jmvarguez on 6/13/15.
//  Copyright (c) 2015 jmvarguez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var barraNotas: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        barraNotas.reloadData()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            Admin.notas.removeAtIndex(indexPath.row)
            barraNotas.reloadData()
            
        }
            
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Admin.notas.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "prueba")
        
       cell.textLabel?.text = Admin.notas[indexPath.row].nombre
        cell.detailTextLabel?.text = Admin.notas[indexPath.row].descripcion
        return cell
        
    }
}

