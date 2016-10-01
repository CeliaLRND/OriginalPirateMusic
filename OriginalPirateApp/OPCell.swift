//
//  OPCell.swift
//  OriginalPirateApp
//
//  Created by MAC on 28/09/2016.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class OPCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
    
    func updateUI(OPFile: OPFile) {
        videoTitle.text = OPFile.videoTitle
        
        let url = URL(string: OPFile.imageURL)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
        
    }



}
