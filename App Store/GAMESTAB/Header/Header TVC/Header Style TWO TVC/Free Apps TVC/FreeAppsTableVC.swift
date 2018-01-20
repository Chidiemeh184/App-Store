//
//  FreeAppsTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/20/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class FreeAppsTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

//MARK : Row Height
extension FreeAppsTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
    }
    
}


//MARK: Data Source

extension FreeAppsTableVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.freeAppsTableViewCell.rawValue) as!
        FreeAppsTableViewCell
        return cell
        
    }
    
}
