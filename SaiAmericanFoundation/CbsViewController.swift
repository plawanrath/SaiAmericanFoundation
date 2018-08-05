//
//  CbsViewController.swift
//  SaiAmericanFoundation
//
//  Created by Plawan Rath on 12/16/17.
//  Copyright © 2017 Plawan Rath. All rights reserved.
//

import UIKit
import WebKit

class CbsViewController: UIViewController {
    
    @IBOutlet weak var cbsWebview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let babaProfileEmbedCode = "zMGjph87hhY"
        getVideo(videoCode: babaProfileEmbedCode)
        // Do any additional setup after loading the view.
    }
    
    func getVideo(videoCode: String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        let request = URLRequest(url: url!)
        cbsWebview.load(request)
    }
    
}
