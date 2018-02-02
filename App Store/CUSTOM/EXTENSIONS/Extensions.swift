//
//  Extensions.swift
//  App Store
//
//  Created by Chidi Emeh on 1/12/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit
import Foundation


//Adds cornerRadius to two edges
extension UIVisualEffectView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.contentView.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}

//Adds cornerRadius to two edges
extension UIView {

    func roundBottomCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}




extension UIImageView {
    
    func downloadImage(string : String){
        

  
        
        let imageCache = NSCache<AnyObject, AnyObject>()
        
        guard let url =  URL(string: string) else {return}
        
        if let imageFromCache = imageCache.object(forKey: url as AnyObject) as? UIImage {
            
            self.image = imageFromCache
            self.layer.masksToBounds = false
            self.layer.borderWidth = 0.5
            self.layer.borderColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 0.5).cgColor
            return
            
        }else {
            
            let imageDownloader = NetworkProcessor(url: url )
            imageDownloader.downloadImageDataFromURL { (data, response, error) in
                if error == nil {
                    guard let image = UIImage(data: data!) else { return }
                    
                    imageCache.setObject(image, forKey: url as AnyObject)
                    
                    DispatchQueue.main.async {
                        self.image = image
                        self.layer.cornerRadius = 10
                        self.clipsToBounds = true
                        
                        self.layer.masksToBounds = false
                        self.layer.borderWidth = 0.5
                        self.layer.borderColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 0.5).cgColor
 
                    }
                }else {
                    print("Error Downloading image: \(error! as NSError)")
                }
            }
            
            
        }

        
    }
    
}
