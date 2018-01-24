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


}

//MARK: Row Height
extension AppDetailOpenTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 158
    }
    
}


//MARK: Data Source
extension AppDetailOpenTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.topTableViewCell.rawValue) as!
        TopTableViewCell
        return cell
    }
    
}
