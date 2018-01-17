//
//  GameStyleThreeCollectionViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GameStyleThreeCollectionViewCell: UICollectionViewCell, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var gameStyleThreeTableView: UITableView!
    
   //First to Load
    override func awakeFromNib() {
        gameStyleThreeTableView.dataSource = self
        gameStyleThreeTableView.delegate  = self
    }
    
    
}

//MARK : Row Height
extension GameStyleThreeCollectionViewCell {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 117
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
    }
    
}


//MARK: Data Source
extension GameStyleThreeCollectionViewCell {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleThreeCollectionTableViewCell.rawValue) as!
        GameStyleThreeCollectionTableViewCell
        return cell
        
    }
    
}
