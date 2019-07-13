//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // allows to tap into audio/visual components of the iPhone

class ViewController: UIViewController, AVAudioPlayerDelegate{

    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag-1]
        playSound(soundFileName : soundArray[sender.tag-1])
    }
    
    func playSound(soundFileName : String){
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
            /** what should happen when there is an error **/
            print(error)
        }
        audioPlayer.play()
    }

}

