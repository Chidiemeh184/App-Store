//
//  UpdatesTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/5/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class UpdatesTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

//MARK: Row Height
extension UpdatesTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 158
    }
    
}


//MARK: Data Source
extension UpdatesTableVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.updateTableViewCell.rawValue) as!
        UpdateTableViewCell
        return cell
    }
    
}
