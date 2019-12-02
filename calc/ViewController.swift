//
//  ViewController.swift
//  calc
//
//  Created by Leads Computer on 12/1/19.
//  Copyright © 2019 Leads Computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // addition tag is 12
    // substraction tag is 13
    // multiplication tag is 14
    // division tag is 15
    // percentage tag is 16
    
    var firstNumber = ""
    var action = 0
    var secondNumber = ""
    var performingMath = false
    var double = false
    
    
    @IBOutlet weak var resultView: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultView.text = nil
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if resultView.text == nil {
            resultView.text = ""
        }
        
        if sender.tag == 0 {
            if Int(resultView.text!) == 0{
                resultView.text = String(0)
                return
            }
        }
        if sender.tag == 10 {
            if resultView.text == "" {
                resultView.text = "0."
            }else{
                resultView.text! += "."
            }
            double = true
            return
        }
        
        resultView.text! += String(sender.tag)
        if performingMath == true {
            secondNumber = resultView.text!
        }else {
            firstNumber = resultView.text!
        }
        
    }
    
    @IBAction func actions(_ sender: UIButton) {
        if resultView.text != nil{
            action = sender.tag
            resultView.text = nil
            performingMath = true
        }
    }
    
    @IBAction func result(_ sender: UIButton) {
        if resultView.text != nil {
            var res = Double(0)
            resultView.text = nil
            
            if action == 12 { //addition
                res = Double(firstNumber)! + Double(secondNumber)!
            }else if action == 13 { // substraction
                res = Double(firstNumber)! - Double(secondNumber)!
            }else if action == 14 { // multiplication
                res = Double(firstNumber)! * Double(secondNumber)!
            }else if action == 15 { // division
                res = Double(firstNumber)! / Double(secondNumber)!
            }
            
            performingMath = false
            if double == true {
                resultView.text = String(res)
            }else {
                resultView.text = String(Int(res))
            }
        }
        
    }
    
    @IBAction func percent(_ sender: Any) {
        if resultView.text != nil {
            var res = 0.0
            res = Double(firstNumber)! / Double(100)
            resultView.text = String(res)
        }
    }
    @IBAction func clear(_ sender: UIButton) {
        firstNumber = ""
        secondNumber = ""
        action = 0
        performingMath = false
        resultView.text = nil
    }
}
