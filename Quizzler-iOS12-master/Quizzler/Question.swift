//
//  Question.swift
//  Quizzler
//
//  Created by Arya Kulkarni on 7/14/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question {

    // PROPERTIES
    let questionText : String
    let answer : Bool

    
    // EVENT
    // determines what happens when a
    // new question object is created from the question class
    init(text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
    
    // ACTION
    func doSomething(){
        
    }
    
}
