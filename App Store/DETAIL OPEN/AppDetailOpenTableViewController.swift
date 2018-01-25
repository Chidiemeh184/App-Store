//
//  AppDetailOpenTableViewController.swift
//  App Store
//
//  Created by Chidi Emeh on 1/24/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class AppDetailOpenTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        //navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //navigationController?.navigationBar.prefersLargeTitles = true
    }


}

//MARK: Row Height
extension AppDetailOpenTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 205
        case 1:
            return 146
        case 2:
            return 486
        default:
            break
        }
        
        return 205
    }
    
}


//MARK: Data Source
extension AppDetailOpenTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.topTableViewCell.rawValue) as!
            TopTableViewCell
        case 1:
             cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.whatsNewTableViewCell.rawValue) as!
        WhatsNewTableViewCell
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.previewTableViewCell.rawValue) as!
            PreviewTableViewCell
        default:
            break
        }
        
        return cell
    }
    
}
