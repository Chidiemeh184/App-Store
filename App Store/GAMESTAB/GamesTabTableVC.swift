//
//  GamesTabTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/5/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GamesTabTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        //Right Image
        let profileImageView : UIImageView = UIImageView(image: UIImage(named: "profile"))
        profileImageView.layer.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        
        let rightImage = UIBarButtonItem(customView: profileImageView)
    
        
        navigationController?.navigationItem.rightBarButtonItem = rightImage
        
    }



}



//MARK: - Header
extension GamesTabTableVC {
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        var dateHeader = UIView()
//        if section == 0 {
//
//            dateHeader = Bundle.main.loadNibNamed("GameHeaderView", owner: self, options: nil)?.first as! GameHeaderView
//
//            //let dateBackView = dateHeader.backView!
//            //dateBackView.backgroundColor =  UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
//
//        }
//         return dateHeader
//    }
//
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return section == 0 ? 55 : 0
//    }
    
}



//MARK: - Datasource
extension GamesTabTableVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleOneTableViewCell.rawValue, for: indexPath) as! GameStyleOneTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleTwoTableViewCell.rawValue) as! GameStyleTwoTableViewCell
            return cell
            
        default:
            print("Could not dequeue cell")
        }
        
        return cell
    

     }
    
}


//MARK: - Height
extension GamesTabTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 340 //372
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
}











