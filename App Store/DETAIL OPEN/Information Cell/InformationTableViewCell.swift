//
//  InformationTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/31/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class InformationTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var informationTableView: UITableView!
    let cellDetailNames = ["Seller", "Size", "Category", "Compactibility", "Languages", "Age Rating", "In-App Purchases", "Developer Website", "Privacy Policy"]
    
    var isCategoryTapped = false
    var isCompactibilityTapped = false
    var isLanguagesTapped = false
    var isAgeRatingTapped = false
    var isInAppPurchasesTapped = false
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        informationTableView.dataSource = self
        informationTableView.delegate = self
        
        informationTableView.estimatedRowHeight = 55
        informationTableView.rowHeight = UITableViewAutomaticDimension
        
        registerXibs()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}

//MARK : Register Xibs
extension InformationTableViewCell {
    
    func registerXibs(){
        informationTableView.register(UINib(nibName: "InformationInnerTableViewCell", bundle: nil), forCellReuseIdentifier: DetailOpenCells.informationInnerTableViewCell.rawValue)
    }
    
}


//Tap section to Expand
extension InformationTableViewCell {
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let updateSB = UIStoryboard(name: "Updates", bundle: nil)
        let appDetailTVC = updateSB.instantiateViewController(withIdentifier: "AppDetailOpenTableViewController") as! AppDetailOpenTableViewController
        let appDetailTableView = appDetailTVC.tableView
       
        
        
        
        //TODO: Refactor
        if indexPath.row == 3 {
            isCategoryTapped = true
            let selectedIndex = IndexPath(row: indexPath.row, section: 0)
            tableView.reloadRows(at: [selectedIndex], with: .none)
            
            //appDetailTableView?.reloadData()

        }else if indexPath.row == 4{
            isCompactibilityTapped = true
            let selectedIndex = IndexPath(row: indexPath.row, section: 0)
            tableView.reloadRows(at: [selectedIndex], with: .none)
            
        }else if indexPath.row == 5{
            isLanguagesTapped = true
            let selectedIndex = IndexPath(row: indexPath.row, section: 0)
            tableView.reloadRows(at: [selectedIndex], with: .none)
            
        }else if indexPath.row == 6{
            isAgeRatingTapped = true
            let selectedIndex = IndexPath(row: indexPath.row, section: 0)
            tableView.reloadRows(at: [selectedIndex], with: .none)
            
        }else if indexPath.row == 6{
            isInAppPurchasesTapped = true
            let selectedIndex = IndexPath(row: indexPath.row, section: 0)
            tableView.reloadRows(at: [selectedIndex], with: .none)
            
        }
        
        else {
            
        }
    }
}



//MARK : Row Height
extension InformationTableViewCell {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 3:
            return isCategoryTapped ? UITableViewAutomaticDimension : 55
        case 4:
            return isCompactibilityTapped ? UITableViewAutomaticDimension : 55
        case 5:
            return isLanguagesTapped ? UITableViewAutomaticDimension : 55
        case 6:
            return isAgeRatingTapped ? UITableViewAutomaticDimension : 55
        default:
            return 55
        }
    }
    
     func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
}


//MARK: Data Source

extension InformationTableViewCell {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.informationInnerTableViewCell.rawValue) as!
        InformationInnerTableViewCell
        return cell
        
    }
    
}
