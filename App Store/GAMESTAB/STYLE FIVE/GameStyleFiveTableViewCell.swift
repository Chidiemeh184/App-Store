//
//  GameStyleFiveTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/17/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GameStyleFiveTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var gameStyleFiveTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        gameStyleFiveTableView.dataSource = self
        gameStyleFiveTableView.delegate  = self
    }

}


//MARK : Row Height
extension GameStyleFiveTableViewCell {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 52
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
    }
    
}

//MARK: Data Source
extension GameStyleFiveTableViewCell {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleFiveInnerTableViewCell.rawValue) as!
        GameStyleFiveInnerTableViewCell
        return cell
        
    }
    
}
