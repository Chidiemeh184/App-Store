//
//  StyleOneTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/15/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GameStyleOneTableViewCell : UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var gamesStyleOneCollectionView: UICollectionView!
    

    
    //First Loading Func
    override func awakeFromNib() {
        super.awakeFromNib()
        
        gamesStyleOneCollectionView.delegate = self
        gamesStyleOneCollectionView.dataSource = self
    
    }

    

    
}

//MARK: - ScrollViewWillEnd dragging
extension GameStyleOneTableViewCell {

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: collectionView.frame.size.width - 35, height: collectionView.frame.size.height)
        return size
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = UIEdgeInsetsMake(0, 15, 0, 20)
        return inset
    }
    

}




//MARK: - Datasource
extension GameStyleOneTableViewCell {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCells.gamesStyleOneCollectionViewCell.rawValue, for: indexPath) as! GamesStyleOneCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Perform Segue
    }
    
    
}
