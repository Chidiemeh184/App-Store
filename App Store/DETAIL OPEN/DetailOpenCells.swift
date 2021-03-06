//
//  DetailOpenCells.swift
//  App Store
//
//  Created by Chidi Emeh on 1/24/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import Foundation



enum DetailOpenCells : String {
    
    //TableViewCell
    case topTableViewCell = "topTableViewCell"
    case previewTableViewCell = "previewTableViewCell"
    case informationTableViewCell = "informationTableViewCell"
    case informationInnerTableViewCell = "informationInnerTableViewCell"
    case supportsTableViewCell = "supportsTableViewCell"
    case alsoLikeTableViewCell = "alsoLikeTableViewCell"
    case alsoLikeAppsTableViewCell = "alsoLikeAppsTableViewCell"
    
    //CollectionViewCell
    case previewCollectionViewCell = "previewCollectionViewCell"
    case userRatingCollectionViewCell = "userRatingCollectionViewCell"
    case alsoLikeCollectionViewCell = "alsoLikeCollectionViewCell"
    
    //NIBcells
    case descriptionTableViewCell = "descriptionTableViewCell"
    case whatsNewTableViewCell = "whatsNewTableViewCell"
    case ratingsAndReviewsTableViewCell = "ratingsAndReviewsTableViewCell"
    case userRatingTableViewCell = "userRatingTableViewCell"
}
