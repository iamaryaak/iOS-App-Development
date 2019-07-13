//
//  ViewController.swift
//  Dicee
//
//  Created by Arya Kulkarni on 1/16/19.
//  Copyright © 2019 Arya Kulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // declare variable
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() { // gets triggered when the screen loads up
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
        
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) { // executed when roll is pressed
        
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    
}

