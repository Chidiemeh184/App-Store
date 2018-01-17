//
//  GameStyleTwoTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GameStyleTwoTableViewCell: UITableViewCell,
    UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
    {
    @IBOutlet weak var gameStyleTwoCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        gameStyleTwoCollectionView.delegate = self
        gameStyleTwoCollectionView.dataSource = self
    
    }

}

//MARK: - ScrollViewWillEnd dragging
extension GameStyleTwoTableViewCell {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: collectionView.frame.size.width - 35, height: 304)
        return size
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = UIEdgeInsetsMake(0, 5, 20, 20)
        return inset
    }
    
    
}


//MARK: - Datasource
extension GameStyleTwoTableViewCell {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCells.gameStyleTwoCollectionViewCell.rawValue, for: indexPath) as! GameStyleTwoCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Perform Segue
    }
    
    
}
