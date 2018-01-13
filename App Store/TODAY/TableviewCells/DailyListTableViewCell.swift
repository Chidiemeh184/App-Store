//
//  DailyListTableViewCell.swift
//  App Store
//
//  Created by Chidi Emeh on 1/12/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class DailyListTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {
    
    //Properties
    @IBOutlet weak var appView: UIView!
    @IBOutlet weak var shadowView: ShadowView!
    @IBOutlet weak var appsListTableView: ListTableView!
    var numberOfRows  = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        appsListTableView.dataSource = self
        appsListTableView.delegate = self
        appsListTableView.reloadData()
        configureView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    
    func configureView() {
        appView.clipsToBounds = true
        appView.layer.cornerRadius = 15
        shadowView.setUpShadow()
    }
    
}



//MARK: - Datasource
extension DailyListTableViewCell {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.listTableViewCell.rawValue) as! ListTableViewCell
        return cell
    }
}


//MARK: - Footer Height
extension DailyListTableViewCell {
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }


}









