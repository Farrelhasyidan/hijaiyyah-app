//
//  ViewController.swift
//  Hijaiyah
//
//  Created by Edi Sunardi on 19/11/20.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var playerSound: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnHijaiyah(_ sender: UIButton) {
        playSound(sound: sender.currentTitle!)
    }
    func playSound(sound: String) {
        
        let url = Bundle.main.url(forResource: sound, withExtension: "mp3")

        
        playerSound = try! AVAudioPlayer(contentsOf: url!)
        playerSound?.play()
       }
}


