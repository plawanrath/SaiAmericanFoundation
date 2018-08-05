//
//  VideosViewController.swift
//  SaiAmericanFoundation
//
//  Created by Plawan Rath on 12/21/17.
//  Copyright © 2017 Plawan Rath. All rights reserved.
//

import UIKit
import WebKit

class VideosViewController: UIViewController {

    @IBOutlet weak var videoView: WKWebView!
    @IBOutlet weak var videoTitle: UILabel!
    
    var titles = ["Sai International School (2012)", "Building Bridges across the Nations' Award (2012)", "Release of Book 'Shraadha Saburi', Vol. 2 (2014)",
                  "3rd Annual BARIPADA BOOK FAIR on December 2014", "Sydney (2014)", "Opening Prayer at the US House of Representatives (2015)", "Sai Global Function (2013)",
                  "'Shirdi Sai Sandhya', Dallas (2013)", "Global Sai Movement at Seattle (2013)", "'Sai Sandhya' at Seattle (2014)", "Inspires teachers of SAI International School, Bhubaneswar",
                  "ANTARANGA - Interview with MBC TV (Part 1) (in Odia)", "ANTARANGA - Interview with MBC TV (Part 2) (in Odia)", "Shirdi Sai Temple Hampshire 10th Anniversary (2014)",
                  "Assam Nagaon Visit (2012)", "On Mystique India and Global Sai Movement at the Seattle Center (2012)", "At Kali Bari Temple, Delhi on Shri Guru Bhagavat (Bengali) Release Function (2013)",
                  "Felicitation at SAI International School (2015)", "At Global Odisha Conf, Washington DC, USA (2015)", "Release of the book, 'Shri Guru Bhagavat Prashnottari' (2016)",
                  "Saint Shirdi Sai Spiritual Retreat - Day 1 (2016)", "Saint Shirdi Sai Spiritual Retreat - Day 2 (2016)", "Guru Purnima Message 2012", "New Year Message 2014", "Vijayadashami Message 2011",
                  "Guru Purnima Message 2011", "New Year Message 2012", "Diwali Message"]
    
    var TitleCodeMap: [String: String] = ["Sai International School (2012)": "vlaBz66jSBw",
                                          "Building Bridges across the Nations' Award (2012)": "YhCEHx8LTIk",
                                          "Release of Book 'Shraadha Saburi', Vol. 2 (2014)": "ubqgnEk2uoM",
                                          "3rd Annual BARIPADA BOOK FAIR on December 2014": "MuSDsN_7k_Y",
                                          "Sydney (2014)": "VT12kXfkz0Y",
                                          "Opening Prayer at the US House of Representatives (2015)": "kVHy30sjivQ",
                                          "Sai Global Function (2013)": "18AXqiB1JK0",
                                          "'Shirdi Sai Sandhya', Dallas (2013)": "EWbfG9wSudM",
                                          "Global Sai Movement at Seattle (2013)": "ZJL5Q7q7xvI",
                                          "'Sai Sandhya' at Seattle (2014)": "HISFK3SVHkg",
                                          "Inspires teachers of SAI International School, Bhubaneswar": "lsqvVlIMFCA",
                                          "ANTARANGA - Interview with MBC TV (Part 1) (in Odia)": "6hhj_kJEx9c",
                                          "ANTARANGA - Interview with MBC TV (Part 2) (in Odia)": "vq_bOjwOVrQ",
                                          "Shirdi Sai Temple Hampshire 10th Anniversary (2014)": "fBP1BrExvDk",
                                          "Assam Nagaon Visit (2012)": "7SD_8oO0K7M",
                                          "On Mystique India and Global Sai Movement at the Seattle Center (2012)": "s639ND3-lME",
                                          "At Kali Bari Temple, Delhi on Shri Guru Bhagavat (Bengali) Release Function (2013)": "c2Dg7mEK8X8",
                                          "Felicitation at SAI International School (2015)": "qodWHUrveYA",
                                          "At Global Odisha Conf, Washington DC, USA (2015)": "bQGIlEw0QcA",
                                          "Release of the book, 'Shri Guru Bhagavat Prashnottari' (2016)": "wXXHKRRObII",
                                          "Saint Shirdi Sai Spiritual Retreat - Day 1 (2016)": "Q5BGULxUv70",
                                          "Saint Shirdi Sai Spiritual Retreat - Day 2 (2016)": "74KXRjnnpvs",
                                          "Guru Purnima Message 2012": "9tfu9hpsvug",
                                          "New Year Message 2014": "Nc6gA5Udjms",
                                          "Vijayadashami Message 2011": "0OIfQyrbaPc",
                                          "Guru Purnima Message 2011": "Kx0zDwlAkqo",
                                          "New Year Message 2012": "hN2RDKV7JcE",
                                          "Diwali Message": "hWs1c1cO3-4"
                                          ]
    
    @IBAction func LoadTrack1(_ sender: Any) {
        videoTitle.text = titles[0]
        getVideo(videoCode: TitleCodeMap[titles[0]]!)
    }
    
    @IBAction func LoadTrack2(_ sender: Any) {
        videoTitle.text = titles[1]
        getVideo(videoCode: TitleCodeMap[titles[1]]!)
    }

    @IBAction func LoadTrack3(_ sender: Any) {
        videoTitle.text = titles[2]
        getVideo(videoCode: TitleCodeMap[titles[2]]!)
    }
    
    @IBAction func LoadTrack4(_ sender: Any) {
        videoTitle.text = titles[3]
        getVideo(videoCode: TitleCodeMap[titles[3]]!)
    }
    
    @IBAction func LoadTrack5(_ sender: Any) {
        videoTitle.text = titles[4]
        getVideo(videoCode: TitleCodeMap[titles[4]]!)
    }
    
    @IBAction func LoadTrack6(_ sender: Any) {
        videoTitle.text = titles[5]
        getVideo(videoCode: TitleCodeMap[titles[5]]!)
    }
    
    @IBAction func LoadTrack7(_ sender: Any) {
        videoTitle.text = titles[6]
        getVideo(videoCode: TitleCodeMap[titles[6]]!)
    }
    
    @IBAction func LoadTrack8(_ sender: Any) {
        videoTitle.text = titles[7]
        getVideo(videoCode: TitleCodeMap[titles[7]]!)
    }
    
    @IBAction func LoadTrack9(_ sender: Any) {
        videoTitle.text = titles[8]
        getVideo(videoCode: TitleCodeMap[titles[8]]!)
    }
    
    @IBAction func LoadTrack10(_ sender: Any) {
        videoTitle.text = titles[9]
        getVideo(videoCode: TitleCodeMap[titles[9]]!)
    }
    
    @IBAction func LoadTrack11(_ sender: Any) {
        videoTitle.text = titles[10]
        getVideo(videoCode: TitleCodeMap[titles[10]]!)
    }
    
    @IBAction func LoadTrack12(_ sender: Any) {
        videoTitle.text = titles[11]
        getVideo(videoCode: TitleCodeMap[titles[11]]!)
    }
    
    @IBAction func LoadTrack13(_ sender: Any) {
        videoTitle.text = titles[12]
        getVideo(videoCode: TitleCodeMap[titles[12]]!)
    }
    
    @IBAction func LoadTrack14(_ sender: Any) {
        videoTitle.text = titles[13]
        getVideo(videoCode: TitleCodeMap[titles[13]]!)
    }
    
    @IBAction func LoadTrack15(_ sender: Any) {
        videoTitle.text = titles[14]
        getVideo(videoCode: TitleCodeMap[titles[14]]!)
    }
    
    @IBAction func LoadTrack16(_ sender: Any) {
        videoTitle.text = titles[15]
        getVideo(videoCode: TitleCodeMap[titles[15]]!)
    }
    
    @IBAction func LoadTrack17(_ sender: Any) {
        videoTitle.text = titles[16]
        getVideo(videoCode: TitleCodeMap[titles[16]]!)
    }
    
    @IBAction func LoadTrack18(_ sender: Any) {
        videoTitle.text = titles[17]
        getVideo(videoCode: TitleCodeMap[titles[17]]!)
    }
    
    @IBAction func LoadTrack19(_ sender: Any) {
        videoTitle.text = titles[18]
        getVideo(videoCode: TitleCodeMap[titles[18]]!)
    }
    
    @IBAction func LoadTrack20(_ sender: Any) {
        videoTitle.text = titles[19]
        getVideo(videoCode: TitleCodeMap[titles[19]]!)
    }
    
    @IBAction func LoadTrack21(_ sender: Any) {
        videoTitle.text = titles[20]
        getVideo(videoCode: TitleCodeMap[titles[20]]!)
    }
    
    @IBAction func LoadTrack22(_ sender: Any) {
        videoTitle.text = titles[21]
        getVideo(videoCode: TitleCodeMap[titles[21]]!)
    }
    
    @IBAction func LoadTrack23(_ sender: Any) {
        videoTitle.text = titles[22]
        getVideo(videoCode: TitleCodeMap[titles[22]]!)
    }
    
    @IBAction func LoadTrack24(_ sender: Any) {
        videoTitle.text = titles[23]
        getVideo(videoCode: TitleCodeMap[titles[23]]!)
    }
    
    @IBAction func LoadTrack25(_ sender: Any) {
        videoTitle.text = titles[24]
        getVideo(videoCode: TitleCodeMap[titles[24]]!)
    }
    
    @IBAction func LoadTrack26(_ sender: Any) {
        videoTitle.text = titles[25]
        getVideo(videoCode: TitleCodeMap[titles[25]]!)
    }

    @IBAction func LoadTrack27(_ sender: Any) {
        videoTitle.text = titles[26]
        getVideo(videoCode: TitleCodeMap[titles[26]]!)
    }
  
    @IBAction func LoadTrack28(_ sender: Any) {
        videoTitle.text = titles[27]
        getVideo(videoCode: TitleCodeMap[titles[27]]!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoTitle.text = "Select a video to load.."
        // Do any additional setup after loading the view.
    }
    
    
    func getVideo(videoCode: String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        let request = URLRequest(url: url!)
        videoView.load(request)
    }
}
