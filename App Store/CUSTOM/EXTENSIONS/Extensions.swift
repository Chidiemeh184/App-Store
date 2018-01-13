//
//  Extensions.swift
//  App Store
//
//  Created by Chidi Emeh on 1/12/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit


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
