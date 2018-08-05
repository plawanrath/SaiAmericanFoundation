//
//  TeachingsViewController.swift
//  SaiAmericanFoundation
//
//  Created by Plawan Rath on 12/16/17.
//  Copyright © 2017 Plawan Rath. All rights reserved.
//

import UIKit
import AVFoundation

class TeachingsViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    @IBOutlet weak var AudioTitle: UILabel!
    @IBAction func Play(_ sender: Any) {
        player.play()
    }
    @IBAction func Pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func LoadTrack1(_ sender: Any) {
        loadAudio(title: tracks[0])
        player.play()
    }
    
    @IBAction func LoadTrack2(_ sender: Any) {
        loadAudio(title: tracks[1])
        player.play()
    }
    
    @IBAction func LoadTrack3(_ sender: Any) {
        loadAudio(title: tracks[2])
        player.play()
    }
    
    @IBAction func LoadTrack4(_ sender: Any) {
        loadAudio(title: tracks[3])
        player.play()
    }
    
    @IBAction func LoadTrack5(_ sender: Any) {
        loadAudio(title: tracks[4])
        player.play()
    }
    
    @IBAction func LoadTrack6(_ sender: Any) {
        loadAudio(title: tracks[5])
        player.play()
    }
    
    @IBAction func LoadTrack7(_ sender: Any) {
        loadAudio(title: tracks[6])
        player.play()
    }
    
    var TitleSongMap: [String: String] = ["Sai Baba of Shirdi": "1-sai-baba-of-shirdi",
                                          "Role of the Sadguru": "2-role-of-the-sadguru",
                                          "Compassionate Living": "3-compassionate-living",
                                          "On Education": "5-on-education",
                                          "Theme of Universalism": "7-theme-of-universalism",
                                          "God and Mystic India": "guruji-on-god-and-mystique-india",
                                          "Vijayadashami Speech": "speech-vijayawada-48-final"]
    
    var tracks: [String] = ["Sai Baba of Shirdi", "Role of the Sadguru", "Compassionate Living", "On Education", "Theme of Universalism", "God and Mystic India", "Vijayadashami Speech"]

    override func viewDidLoad() {
        super.viewDidLoad()
        AudioTitle.text = "Choose a track to play.."
    }
    
    func loadAudio(title: String) {
        AudioTitle.text = title
        do {
            let audioPath = Bundle.main.path(forResource: TitleSongMap[title], ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            AudioTitle.text = "Error loading audio"
        }
    }
}
