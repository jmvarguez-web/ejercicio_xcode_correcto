//
//  ViewController.swift
//  calculadora
//
//  Created by jmvarguez on 6/2/15.
//  Copyright (c) 2015 jmvarguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Screen: UILabel!
   
    
    var primeronumero = Int();
    var segundonumero = Int();
    var isTypingNumber = false;
    var resultado = Int();
    var operacion = "";
    
    @IBAction func numero(sender: AnyObject) {
       
        var numero = sender.currentTitle;
        if isTypingNumber == true{
            Screen.text = Screen.text! + numero!!
        }else{
         Screen.text = numero;
        }
        
        isTypingNumber = true;
    }
    
    
    @IBAction func operadores(sender: AnyObject) {
        isTypingNumber = false;
        primeronumero = Screen.text!.toInt()!;
        operacion = sender.currentTitle!!;
    }
    
    @IBAction func igual(sender: AnyObject) {
        
        segundonumero = Screen.text!.toInt()!;
        if operacion == "+" {
            resultado = primeronumero + segundonumero;
        }else if operacion == "-" {
          resultado = primeronumero - segundonumero;
        }else if operacion == "*" {
           resultado = primeronumero * segundonumero;
        }else{
           resultado = primeronumero / segundonumero;
        }
        
        Screen.text = "\(resultado)";
        
        
    }
    
    
    @IBAction func clear(sender: AnyObject) {
        
        primeronumero = 0;
        segundonumero = 0;
        isTypingNumber = false;
        resultado = 0;
        Screen.text = "\(resultado)";
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

