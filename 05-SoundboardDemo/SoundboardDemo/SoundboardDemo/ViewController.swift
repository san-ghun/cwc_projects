//
//  ViewController.swift
//  SoundboardDemo
//
//  Created by Sanghun Park on 2021/12/28.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        // Find which button is tapped
        let filename = sender.titleLabel?.text?.lowercased()
        
        // Play the sound
        playSound(filename)
    }
    
    func playSound(_ filename: String?) {
        
        // Get the url
        let url = Bundle.main.url(forResource: filename, withExtension: "mp3")
        
        // Make sure that have got the url, otherwias abord
        guard url != nil else { return }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
    }
    
}

