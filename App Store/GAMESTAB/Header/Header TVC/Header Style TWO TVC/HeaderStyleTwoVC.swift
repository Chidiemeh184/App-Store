//
//  HeaderStyleTwoVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/17/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class HeaderStyleTwoVC: UIViewController, UIToolbarDelegate {

    @IBOutlet weak var topToolbar: UIToolbar!
    @IBOutlet weak var appTypeSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var paidAppsContainerView: UIView!
    @IBOutlet weak var freeAppsContainerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topToolbar.delegate = self
        
        paidAppsContainerView.isHidden = false
        freeAppsContainerView.isHidden = true

    }

    @IBAction func appIndexChanged(_ sender: UISegmentedControl) {
        
        switch appTypeSegmentedControl.selectedSegmentIndex {
        case 0:
            paidAppsContainerView.isHidden = false
            freeAppsContainerView.isHidden = true
        case 1:
            paidAppsContainerView.isHidden = true
            freeAppsContainerView.isHidden = false
        default:
            break
        }
        
    }
    
    
    

}

//MARK: - Toolbar Delegate
extension HeaderStyleTwoVC {
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        return UIBarPosition.topAttached
    }
}

//MARK: - Hide NavBar Botton Line

extension UINavigationBar {
    

}





