//
//  AlsoLikeCollectionViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/31/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class AlsoLikeCollectionViewCell: UICollectionViewCell, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var alsoLikeAppsTableView: UITableView!
    
    //First Loading
    override func awakeFromNib() {
        alsoLikeAppsTableView.dataSource = self
        alsoLikeAppsTableView.delegate  = self
    }
    
}



//MARK : Row Height
extension AlsoLikeCollectionViewCell {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
    }
}


//MARK: Data Source

extension AlsoLikeCollectionViewCell {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenCells.alsoLikeAppsTableViewCell.rawValue) as!
        AlsoLikeAppsTableViewCell
        return cell
    }
    
}
