//
//  PaidAppsTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/20/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class PaidAppsTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}


//MARK : Row Height
extension PaidAppsTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
    }
    
}


//MARK: Data Source

extension PaidAppsTableVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 21
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.paidAppsTableViewCell.rawValue) as!
        PaidAppsTableViewCell
        return cell
        
    }
    
}
