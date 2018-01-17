//
//  GameStyleTwoCollectionViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GameStyleTwoCollectionViewCell: UICollectionViewCell,UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var gameStyleTwoTableView: UITableView!
    
    //First Loading
    override func awakeFromNib() {
        gameStyleTwoTableView.dataSource = self
        gameStyleTwoTableView.delegate  = self
    }
    
    
    
    
}

//MARK : Row Height
extension GameStyleTwoCollectionViewCell {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
    }
    
}


//MARK: Data Source

extension GameStyleTwoCollectionViewCell {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleTwoCollectionTableViewCell.rawValue) as!
        GameStyleTwoCollectionTableViewCell
        return cell
        
    }

}
