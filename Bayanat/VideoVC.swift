//
//  VideoVC.swift
//  Bayanat
//
//  Created by Majid on 24/04/2017.
//  Copyright © 2017 Majid. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    
    @IBOutlet weak var webview:UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _bayan:Bayans!
    
    var bayan:Bayans{
        
        get{
            return _bayan
        }
        set{
            _bayan = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = bayan.videoTitle

        webview.allowsInlineMediaPlayback = true
        
        webview.loadHTMLString(bayan.videoUrl, baseURL: nil)
        
        
    }

    @IBAction func cancel(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }



}
