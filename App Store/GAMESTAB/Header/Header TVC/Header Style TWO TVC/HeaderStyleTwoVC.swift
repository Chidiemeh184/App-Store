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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topToolbar.delegate = self

    }

    
    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.navigationBar.isTranslucent = false
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationBar.barTintColor = .white
        
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





