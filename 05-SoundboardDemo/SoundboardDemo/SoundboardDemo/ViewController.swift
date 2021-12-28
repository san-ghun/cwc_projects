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

    @IBAction func aTapped(_ sender: Any) {
        
        // Get the url
        let url = Bundle.main.url(forResource: "a", withExtension: "mp3")
        
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
    
    @IBAction func bTapped(_ sender: Any) {
        
        // Get the url
        let url = Bundle.main.url(forResource: "b", withExtension: "mp3")
        
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
    
    @IBAction func cTapped(_ sender: Any) {
        
        // Get the url
        let url = Bundle.main.url(forResource: "c", withExtension: "mp3")
        
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
    
    @IBAction func dTapped(_ sender: Any) {
        
        // Get the url
        let url = Bundle.main.url(forResource: "d", withExtension: "mp3")
        
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

