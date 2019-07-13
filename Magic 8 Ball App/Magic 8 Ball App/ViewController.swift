//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Arya Kulkarni on 1/18/19.
//  Copyright © 2019 Arya Kulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // array declaration
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0; // set it to 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBall()
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateBall()
    }
    
    func updateBall(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
}

