//
//  PreviewTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/24/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class PreviewTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var previewCollectionView: UICollectionView!
    
    

    var imageViews : [UIImageView]?{
        didSet {
            print("Loaded Imageview count \(imageViews?.count)")
        }
    }
    var images : [UIImage?]?
    var screenShotUrls : [String]? {
        didSet {
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        previewCollectionView.delegate = self
        previewCollectionView.dataSource = self
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    

}


//MARK: Process Images
extension PreviewTableViewCell {
    
    func loadImagesFromURLs(){
        
        imageViews = [UIImageView]()
        images = [UIImage]()
        for item in screenShotUrls! {
            let tempImageView = UIImageView()
            tempImageView.downloadImage(string: item)
            imageViews?.append(tempImageView)
            
            images?.append(tempImageView.image)
            
        }
        
    }

}



//MARK: - ScrollViewWillEnd dragging
extension PreviewTableViewCell {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 266, height: 440)
        return size
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = UIEdgeInsetsMake(4, 20, 4, 0)
        return inset
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        previewCollectionView.reloadItems(at: [indexPath])
    }
    
    
}



//MARK: - Datasource
extension PreviewTableViewCell {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (imageViews?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailOpenCells.previewCollectionViewCell.rawValue, for: indexPath) as! PreviewCollectionViewCell
        
        let tempImageView = imageViews![indexPath.row]
        cell.setUp(imageview: tempImageView)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //Perform Segue
    }
    
    
}
