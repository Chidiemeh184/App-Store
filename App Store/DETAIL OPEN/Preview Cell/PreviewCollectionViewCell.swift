//
//  PreviewCollectionViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/24/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class PreviewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var screenshotImageView: UIImageView!
    
    
    func setUp(image : UIImage){
        screenshotImageView.image = image
        
    }
    
    func setUp(imageview : UIImageView){
        screenshotImageView.image = imageview.image
    }
    
}
