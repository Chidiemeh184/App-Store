//
//  AlsoLikeTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/31/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class AlsoLikeTableViewCell: UITableViewCell,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var alsoLikeCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        alsoLikeCollectionView.delegate = self
        alsoLikeCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}




//MARK: - ScrollViewWillEnd dragging
extension AlsoLikeTableViewCell {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 350, height: 208)
        return size
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = UIEdgeInsetsMake(0, 10, 0, 0)
        return inset
    }
    
}



//MARK: - Datasource
extension AlsoLikeTableViewCell {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailOpenCells.alsoLikeCollectionViewCell.rawValue, for: indexPath) as! AlsoLikeCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Perform Segue
    }
    
    
}
