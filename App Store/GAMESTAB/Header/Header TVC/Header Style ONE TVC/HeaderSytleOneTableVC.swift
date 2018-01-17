//
//  HeaderSytleOneTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/17/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class HeaderSytleOneTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Small Title Header
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
         //Large Header Title
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    



 
}


//MARK : Row Height
extension HeaderSytleOneTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
    }
    
}

//MARK: Data Source
extension HeaderSytleOneTableVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.headerStyleOneTableViewCell.rawValue) as!
        HeaderStyleOneTableViewCell
        return cell
    }
    
}
