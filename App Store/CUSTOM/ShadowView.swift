//
//  ShadowView.swift
//  App Store
//
//  Created by Chidi Emeh on 1/12/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func setUpShadow(){
        self.clipsToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0.9, height: 9.5) //11
        self.layer.shadowRadius = 10 //18
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 10).cgPath
    }

}
