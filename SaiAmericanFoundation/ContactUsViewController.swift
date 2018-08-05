//
//  ContactUsViewController.swift
//  SaiAmericanFoundation
//
//  Created by Plawan Rath on 12/16/17.
//  Copyright © 2017 Plawan Rath. All rights reserved.
//

import UIKit
import WebKit

class ContactUsViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.paypal.me/safoundation")
        let request = URLRequest(url: url!)
        
        webView.load(request)
        // Do any additional setup after loading the view.
    }

}
