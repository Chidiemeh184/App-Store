//
//  SearchTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/5/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class SearchTableVC: UITableViewController {

    var dummyData : [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dummyData = ["turbo tax", "cw", "google art", "chase pay", "fx", "after school", "irs2go"]
        navigationController?.navigationBar.isHidden = true
        
    }

}



//MARK: Se Header
extension SearchTableVC {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var dateHeader = UIView()
        
        if section == 0 {
            dateHeader = Bundle.main.loadNibNamed("SearchHeaderView", owner: self, options: nil)?.first as! SearchHeaderView
        }

        //let dateBackView = dateHeader.backView!
        //dateBackView.backgroundColor =  UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
        return dateHeader
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 196
    }

    
}

//MARK: Data Source
extension SearchTableVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.searchTableViewCell.rawValue) as!
        SearchTableViewCell
        cell.titleLabel.text = dummyData![indexPath.row]
        return cell
    }
    
}
