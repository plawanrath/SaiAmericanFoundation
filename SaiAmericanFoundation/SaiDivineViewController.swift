//
//  SaiDivineViewController.swift
//  SaiAmericanFoundation
//
//  Created by Plawan Rath on 12/16/17.
//  Copyright © 2017 Plawan Rath. All rights reserved.
//

import UIKit
import PDFKit

class SaiDivineViewController: UIViewController {
    
//    @IBOutlet weak var magazineWebview: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        
        pdfView.autoScales = true
        pdfView.displayMode = PDFDisplayMode.singlePageContinuous
        pdfView.displayDirection = PDFDisplayDirection.vertical
        
        if let pdfPath = Bundle.main.url(forResource: "MagazineCurrent", withExtension: "pdf"),
            let document = PDFDocument(url: pdfPath) {
            pdfView.document = document
        }
//        let pdfPath = Bundle.main.url(forResource: "Magazine11", withExtension: "pdf")
//        let reqUrl = URLRequest(url: pdfPath!)
//        magazineWebview.load(reqUrl)
        // Do any additional setup after loading the view.
        
        
        /*
         IDEA: Create another View Controller. Upon clicking a Magazine show that view controller with that magazine. That ViewCOntroller should simply load a pdfview
         as below. If possible check if Pdf view is supposrted if not show webviewand load pdf as above in that view.

         let pdfView = PDFView(frame: self.view.subviews[0].bounds)
         
         self.view.addSubview(pdfView)
         if let pdfPath = Bundle.main.url(forResource: "Magazine11", withExtension: "pdf"),
         let document = PDFDocument(url: pdfPath) {
         pdfView.document = document
         }
         */
    }
}
