//
//  Apps.swift
//  App Store
//
//  Created by Chidi Emeh on 1/11/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import Foundation

//The collection of apps returned from a search
//as defined in the API


struct Apps : Codable {
    
    var resultCount : Int?
    var results : [App]?

}
