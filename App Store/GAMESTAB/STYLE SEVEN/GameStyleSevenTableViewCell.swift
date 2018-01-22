    //
//  GameStyleSevenTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/21/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GameStyleSevenTableViewCell: UITableViewCell, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var gameStyleSevenTableView: UITableView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        //Set Datasource
        gameStyleSevenTableView.dataSource = self
        gameStyleSevenTableView.delegate = self

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
    
    

//MARK : Row Height
extension GameStyleSevenTableViewCell {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 3 {
            return 112
        }else {
           return 47
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
    }
    
}
    
    

//MARK: Data Source
extension GameStyleSevenTableViewCell {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        switch indexPath.row {
        case 0:
             cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleSevenInnerTableViewCell.rawValue) as!
            GameStyleSevenInnerTableViewCell
            return cell
        case 3:
            cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleSevenInnerTableViewCellTWO.rawValue) as!
            GameStyleSevenInnerTableViewCellTWO
            return cell
        case 4:
            cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleSevenInnerTableViewCellTHREE.rawValue) as!
            GameStyleSevenInnerTableViewCellTHREE
            return cell
        default:
            break
        }
        return cell
    }
    
}
    
    
    
    
    
    
    
    
    
    
    
    

