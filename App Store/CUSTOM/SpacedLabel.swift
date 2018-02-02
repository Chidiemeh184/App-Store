//
//  SpacedLabel.swift
//  App Store
//
//  Created by Chidi Emeh on 2/2/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

@IBDesignable class SpacedLabel: UILabel {

    @IBInspectable var spacing: CGFloat = 4.0
    
    override func awakeFromNib() {
        let attributedString = NSMutableAttributedString(string: self.text!)
        
        attributedString.addAttribute(NSAttributedStringKey.kern, value: spacing, range: NSMakeRange(0, attributedString.length))
      
        self.attributedText = attributedString
    }

}
