//
//  ViewController.swift
//  OriginalPirateApp
//
//  Created by MAC on 28/09/2016.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView : UITableView!
    

    var OriginalPirates = [OPFile]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let OP1 = OPFile(imageURL: "https://hit-lokal.com/media/clip/2016/08/x-man-feat-original-pirates-enemies-2016.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/95OF1W5kOgQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "TERRESAINVILLE")
        
                let OP2 = OPFile(imageURL: "https://i.ytimg.com/vi/LWqt2lauxpE/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FlJcd4l5sRc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "ROULEY")
        
                let OP3 = OPFile(imageURL: "http://img.youtube.com/vi/P2-fjxwHpJA/0.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RRZkhKKO88Y\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "PALE BA MWEN")
        
                let OP4 = OPFile(imageURL: "https://i.ytimg.com/vi/o7WcvP2HBmY/mqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/o7WcvP2HBmY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "HIBOU")
        
        OriginalPirates.append(OP1)
        OriginalPirates.append(OP2)
        OriginalPirates.append(OP3)
        OriginalPirates.append(OP4)
        tableView.delegate = self
        tableView.dataSource = self

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "OPCell", for: indexPath) as? OPCell {
            let  originalpirate = OriginalPirates[indexPath.row]
            cell.updateUI(OPFile: originalpirate)
            return cell
        }
        else{
          return UITableViewCell()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OriginalPirates.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let  originalPirate = OriginalPirates[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: originalPirate)
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destination as? VideoVC {
            if let original = sender as? OPFile {
                destination.originalPirate = original
            }
        }
    }
}

