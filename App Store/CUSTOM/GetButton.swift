//
//  GetButton.swift
//  App Store
//
//  Created by Chidi Emeh on 1/12/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GetButton: UIButton {

    override func awakeFromNib() {
       self.layer.cornerRadius = self.layer.frame.height / 2
    }

}
