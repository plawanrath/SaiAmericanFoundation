//
//  SaiDivineOlder2ViewController.swift
//  SaiAmericanFoundation
//
//  Created by Plawan Rath on 12/21/17.
//  Copyright © 2017 Plawan Rath. All rights reserved.
//

import UIKit
import PDFKit

class SaiDivineOlder2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        
        pdfView.autoScales = true
        pdfView.displayMode = PDFDisplayMode.singlePageContinuous
        pdfView.displayDirection = PDFDisplayDirection.vertical
        
        if let pdfPath = Bundle.main.url(forResource: "MagazineOlder2", withExtension: "pdf"),
            let document = PDFDocument(url: pdfPath) {
            pdfView.document = document
        }

        // Do any additional setup after loading the view.
    }
}
