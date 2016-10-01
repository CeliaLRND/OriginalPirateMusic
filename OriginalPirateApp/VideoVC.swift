//
//  VideoVC.swift
//  OriginalPirateApp
//
//  Created by MAC on 28/09/2016.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    
    
    

    
    
    
    @IBOutlet weak var titleLbl: UILabel!
    
    
    
    @IBOutlet weak var webview: UIWebView!
    
    
    private var _originalPirate: OPFile!
    
    var originalPirate: OPFile {
        get {
            return _originalPirate
        } set {
            _originalPirate = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = originalPirate.videoTitle
        webview.loadHTMLString(originalPirate.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
