//
//  GamesTabTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/5/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class GamesTabTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
    }





}



//MARK: - Header
extension GamesTabTableVC {
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var dateHeader = UIView()
        
            dateHeader = Bundle.main.loadNibNamed("GameHeaderView", owner: self, options: nil)?.first as! GameHeaderView
        
        //let dateBackView = dateHeader.backView!
        //dateBackView.backgroundColor =  UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
        return dateHeader
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 95
    }
    
}



//MARK: - Datasource
extension GamesTabTableVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: Cells.gameStyleOneTableViewCell.rawValue, for: indexPath)
        
         return cell
     }
    
}


//MARK: - Height
extension GamesTabTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 338
    }
    
}











