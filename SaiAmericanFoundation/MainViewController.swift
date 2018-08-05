//
//  MainViewController.swift
//  SaiAmericanFoundation
//
//  Created by Plawan Rath on 12/13/17.
//  Copyright © 2017 Plawan Rath. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var landingImages : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let wheat = UIColor(red: 245/255, green: 222/255, blue: 179/255, alpha: 1)
        self.view.backgroundColor = wheat
        
        NotificationCenter.default.addObserver(self, selector: #selector(showSAF), name: NSNotification.Name("ShowSAF"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSaiDivine), name: NSNotification.Name("ShowSaiDivine"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSaiBaba), name: NSNotification.Name("ShowSaiBaba"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showCbs), name: NSNotification.Name("ShowCbs"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showTeachings), name: NSNotification.Name("ShowTeachings"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showDiscourses), name: NSNotification.Name("ShowDiscourses"), object: nil)
        
        landingImages?.animationImages = [
            UIImage(named: "HarveyDonation")!,
            UIImage(named: "Message2")!,
            UIImage(named: "BlanketDrive")!,
            UIImage(named: "Message1")!,
            UIImage(named: "DiwaliMela")!,
        ]
        
        landingImages.animationDuration = 20
        landingImages.startAnimating()
    }
    
    @objc func showSAF() {
        performSegue(withIdentifier: "ShowSAF", sender: nil)
    }
    
    @objc func showSaiDivine() {
        performSegue(withIdentifier: "ShowSaiDivine", sender: nil)
    }
    
    @objc func showSaiBaba() {
        performSegue(withIdentifier: "ShowSaiBaba", sender: nil)
    }
    
    @objc func showCbs() {
        performSegue(withIdentifier: "ShowCbs", sender: nil)
    }
    
    @objc func showTeachings() {
        performSegue(withIdentifier: "ShowTeachings", sender: nil)
    }
    
    @objc func showDiscourses() {
        performSegue(withIdentifier: "ShowDiscourses", sender: nil)
    }
    
    @IBAction func onMenuTapped() {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideView"), object: nil)
    }

}
