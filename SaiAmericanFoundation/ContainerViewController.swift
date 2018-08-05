//
//  ViewController.swift
//  SaiAmericanFoundation
//
//  Created by Plawan Rath on 12/9/17.
//  Copyright © 2017 Plawan Rath. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideView"), object: nil)
    }
    
    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuConstraint.constant = -240
            sideMenuOpen = false
        } else {
            sideMenuConstraint.constant = 0
            sideMenuOpen = true
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}

