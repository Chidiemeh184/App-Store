//
//  UserRatingTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/26/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class UserRatingTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var userRatingCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userRatingCollectionView.delegate = self
        userRatingCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}



//MARK: - ScrollViewWillEnd dragging
extension UserRatingTableViewCell {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //let size = CGSize(width: collectionView.frame.size.width - 35, height: 173)
        let size = CGSize(width: 335, height: 205)
        return size
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = UIEdgeInsetsMake(0, 10, 5, 5)
        return inset
    }
    
}



//MARK: - Datasource
extension UserRatingTableViewCell {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailOpenCells.userRatingCollectionViewCell.rawValue, for: indexPath) as! UserRatingCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Perform Segue
    }
    
    
}
