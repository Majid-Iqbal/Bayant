//
//  VideoCell.swift
//  Bayanat
//
//  Created by Majid on 24/04/2017.
//  Copyright © 2017 Majid. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func updateUI(bayan:Bayans){
        
        videoTitle.text = bayan.videoTitle
        
        //image is downloading so thats setting grab it asynchronously
        
        let url = URL(string:bayan.imageUrl)
        
        DispatchQueue.global().async {
            
            do{          
                let data = try Data(contentsOf: url!)
                
                DispatchQueue.main.sync {
                    
                    self.videoPreviewImage.image = UIImage(data: data)
                    
                }
            }catch{
                
                print(error.localizedDescription)
            }
            
        }
    }

}
