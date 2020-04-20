//
//  ViewController.swift
//  Peem Calculator
//
//  Created by Peem on 19/4/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performimgMath = false
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton)
        
    {
        if performimgMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performimgMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
        
    }
    @IBAction func dot(_ sender: UIButton) {
    }
    
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 17
        {
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 //หาร
            {
                label.text = "/";
            }
            else if sender.tag == 13 //คูณ
            {
                label.text = "X";
            }
            else if sender.tag == 14 //ลบ
            {
                label.text = "-";
            }
            else if sender.tag == 15 //บวก
            {
                label.text = "+";
            }
            else if sender.tag == 17 //.
            {
                label.text = ".";
            }
            
            operation = sender.tag
            performimgMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14
            {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15
            {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

