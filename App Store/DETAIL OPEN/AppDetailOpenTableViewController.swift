//
//  AppDetailOpenTableViewController.swift
//  App Store
//
//  Created by Chidi Emeh on 1/24/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class AppDetailOpenTableViewController: UITableViewController {
    
    var isDescriptionTapped = false
    var isWhatsNewTapped = false
    var isInformationTapped = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Tableview was reloaded.......................")
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        registerNibs()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        //navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //navigationController?.navigationBar.prefersLargeTitles = true
    }


}

//Register cell Nibs
extension AppDetailOpenTableViewController {
   
    func registerNibs(){
        
        //UserRatingTableViewCell
            tableView.register(UINib(nibName: "WhatsNewTableViewCell", bundle: nil), forCellReuseIdentifier: DetailOpenCells.whatsNewTableViewCell.rawValue)
        
            tableView.register(UINib(nibName: "DescriptionTableViewCell", bundle: nil), forCellReuseIdentifier: DetailOpenCells.descriptionTableViewCell.rawValue)
            tableView.register(UINib(nibName: "RatingsAndReviewsTableViewCell", bundle: nil), forCellReuseIdentifier: DetailOpenCells.ratingsAndReviewsTableViewCell.rawValue)
    }
}


//Tap section to Expand
extension AppDetailOpenTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 3 {
            isDescriptionTapped = true
            let selectedIndex = IndexPath(row: indexPath.row, section: 0)
            tableView.reloadRows(at: [selectedIndex], with: .none)
        }else if indexPath.row == 1{
            isWhatsNewTapped = true
            let selectedIndex = IndexPath(row: indexPath.row, section: 0)
            tableView.reloadRows(at: [selectedIndex], with: .none)
            
        }else if indexPath.row == 6{
            isInformationTapped = true
            let selectedIndex = IndexPath(row: indexPath.row, section: 0)
            tableView.reloadRows(at: [selectedIndex], with: .none)
            
        }
        else {
            
        }
    }
}



//MARK: Row Height
extension AppDetailOpenTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 205
        case 1:
            return isWhatsNewTapped ? UITableViewAutomaticDimension : 160
        case 2:
            return 486
        case 3:
            return isDescriptionTapped ? UITableViewAutomaticDimension : 200
        case 4:
            return 164
        case 5:
            return 330
        case 6:
            return isInformationTapped ? UITableViewAutomaticDimension : 595
        case 7:
            return 220
        case 8:
            return 340
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
        return 9
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
        case 3:
            cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.descriptionTableViewCell.rawValue) as!
            DescriptionTableViewCell
        case 4:
            cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.ratingsAndReviewsTableViewCell.rawValue) as!
            RatingsAndReviewsTableViewCell
        case 5:
            cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.userRatingTableViewCell.rawValue) as!
            UserRatingTableViewCell
        case 6:
            cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.informationTableViewCell.rawValue) as!
            InformationTableViewCell
        case 7:
            cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.supportsTableViewCell.rawValue) as!
            SupportsTableViewCell
        case 8:
            cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.alsoLikeTableViewCell.rawValue) as!
        AlsoLikeTableViewCell
        default:
            break
        }
        
        return cell
    }
    
}
