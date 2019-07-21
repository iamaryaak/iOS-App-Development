//
//  ViewController.swift
//  Auto Layout Calculator
//
//  Created by Arya Kulkarni on 7/17/19.
//  Copyright © 2019 Arya Kulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    // declare variables
    var onScreenNum : Double = 0
    var prevNumber : Double = 0
    var performingMath = false; // bool
    var operation = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func operationS(_ sender: UIButton) {
        
        // if it isnt = sign
        if resultLabel.text != "" && sender.tag != 11{
            if sender.tag == 12{
                resultLabel.text = "+"
            }else if sender.tag == 13{
                resultLabel.text = "-"
            }else if sender.tag == 14{
                resultLabel.text = "x"
            }else if sender.tag == 15{
                resultLabel.text = "÷"
            }
            
            
            operation = sender.tag
            prevNumber = onScreenNum
            performingMath = true
        }else{
            if operation == 12{
                resultLabel.text = String(prevNumber + onScreenNum)
            }else if operation == 13{
                resultLabel.text = String(prevNumber - onScreenNum)
                print(prevNumber - onScreenNum)
            }else if operation == 14{
                resultLabel.text = String(prevNumber * onScreenNum)
                print(prevNumber * onScreenNum)
                
            }else if operation == 15{
                if onScreenNum == 0{
                    // reset
                    resultLabel.text = "";
                    prevNumber = 0
                    onScreenNum = 0
                    operation = 0
                }else{
                    resultLabel.text = String(prevNumber / onScreenNum)
                    //print(prevNumber / onScreenNum)
                }
            }
            
            onScreenNum = Double(resultLabel.text!)!
            prevNumber = 0
        }
        
    }
    
    @IBAction func oppositeSign(_ sender: UIButton) {
        onScreenNum = (-1) * onScreenNum
        resultLabel.text = String(onScreenNum)
    }
    
    @IBAction func resetLabel(_ sender: UIButton) {
        if sender.tag == 16{
            resultLabel.text = "";
            prevNumber = 0
            onScreenNum = 0
            operation = 0
        }
    }
    
    @IBAction func number(_ sender: UIButton) {
        //resultLabel.text = ""
        if performingMath == true{
            print("performing math")
            if sender.tag == 10{
                resultLabel.text = resultLabel.text! + "."
                //onScreenNum = Double(resultLabel.text!)!
                performingMath = false
            }else{
                resultLabel.text = String(sender.tag)
                //onScreenNum = Double(resultLabel.text!)!
                performingMath = false
            }
            onScreenNum = Double(resultLabel.text!)!
            //(onScreenNum)
        }else{
            print("NOT performing math")
            if sender.tag == 10{
                resultLabel.text = resultLabel.text! + "."
                
            }else {
                print("Result Label Before: " + resultLabel.text!)
            
                resultLabel.text = resultLabel.text! + String(sender.tag)
                
                
                 print("Result Label After: " + resultLabel.text!)
            }
            onScreenNum = Double(resultLabel.text!)!
            print(onScreenNum)
        }
        
    }
    
    // prevNumber - onScreen = result
    // result is new onScreen
    // onScreen is new prevNumber
    // result = new On Screen number
    // old number = prev Number
        
}

