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
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}



//MARK: - Header
extension GamesTabTableVC {
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var dateHeader = UIView()
        if section != 0 {

            dateHeader = Bundle.main.loadNibNamed("GameHeaderTitleOne", owner: self, options: nil)?.first as! GameHeaderTitleOne

            //let dateBackView = dateHeader.backView!
            //dateBackView.backgroundColor =  UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)

        }
         return dateHeader
    }


    
}



//MARK: - Datasource
extension GamesTabTableVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleOneTableViewCell.rawValue, for: indexPath) as! GameStyleOneTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleTwoTableViewCell.rawValue) as! GameStyleTwoTableViewCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleTwoTableViewCell.rawValue) as! GameStyleTwoTableViewCell
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleThreeTableViewCell.rawValue) as! GameStyleThreeTableViewCell
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleFourTableViewCell.rawValue) as! GameStyleFourTableViewCell
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleFiveTableViewCell.rawValue) as! GameStyleFiveTableViewCell
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleThreeTableViewCell.rawValue) as! GameStyleThreeTableViewCell
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleSixTableViewCell.rawValue) as! GameStyleSixTableViewCell
            return cell
        case 8:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleThreeTableViewCell.rawValue) as! GameStyleThreeTableViewCell
            return cell
        case 9:
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleSevenTableViewCell.rawValue) as! GameStyleSevenTableViewCell
            return cell
        default:
            break
        }
    
        return cell
     }
    
}


//MARK: - Row Height
extension GamesTabTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.section == 0 {
            return 340
        }else if indexPath.section == 1 && indexPath.section == 2 {
            return 285
        }else if indexPath.section == 3 && indexPath.section == 6 && indexPath.section == 8{
            return 295
        }else if indexPath.section == 4 {
            return 327
        }else if indexPath.section == 5 {
            return 392
        }else if indexPath.section == 7 {
            return 190
        }else if indexPath.section == 9 {
            return 322  //396
        }
        else {
            return 290  //290
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat.leastNonzeroMagnitude //So that the height of the header will be smallest as possible
        }
        return 40
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNonzeroMagnitude
    }
    
}











