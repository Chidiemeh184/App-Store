//
//  TodayTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/5/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class TodayTableVC: UITableViewController {
    
    var apps : [App]?
    var dates : [[String : String]]?

    override func viewDidLoad() {
        super.viewDidLoad()
        //loadData()
       // loadDates()
        self.navigationController?.navigationBar.isHidden = true
    }


}


//MARK: Date Header
extension TodayTableVC {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let dateHeader = Bundle.main.loadNibNamed("DateHomeHeaderView", owner: self, options: nil)?.first as! DateHomeHeaderView
        //let dateBackView = dateHeader.backView!
        //dateBackView.backgroundColor =  UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
        return dateHeader
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 95
    }
    
}



//MARK: - TABLEVIEW Data Source
extension TodayTableVC {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.sytleTwoTableViewCell.rawValue) as! SytleTwoTableViewCell
            return cell
        }else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.sytleThreeTableViewCell.rawValue) as! SytleThreeTableViewCell
            return cell
        }
        else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.sytleFourTableViewCell.rawValue) as! SytleFourTableViewCell
            return cell
        }else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.dailyListTableViewCell.rawValue) as! DailyListTableViewCell
            cell.numberOfRows = 4
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: Cells.todayTableViewCell.rawValue) as! TodayTableViewCell
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 380
    }
    
}




//MARK: - Load DATA
extension TodayTableVC {
    
    func loadData(){
        
        let filePath = Bundle.main.path(forResource: "data", ofType: "json")
        let url = URL(fileURLWithPath: filePath!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let appResult = try JSONDecoder().decode(Apps.self, from: data)
            guard let apps = appResult.results else { return }
            
            self.apps = apps
            
           // print("Apps count : \(apps.count)")
            
            let firstApp = apps[0]
            
            print(firstApp)

        }catch let error as NSError {
            print("Error loading data : \(error)")
        }
    }
    
    //Apps returned are for a week
    //Each week will be a tableview header and will
    //contain 6 cells
    func loadDates(){
        let dates = [["Today" : "THURSDAY, JANUARY 11"],
                     ["Wednesday" : "JANUARY 10"],
                     ["Tuesday" : "JANUARY 9"],
                     ["Monday" : "JANUARY 8"],
                     ["Sunday" : "JANUARY 7"],
                     ["Saturday" : "JANUARY 6"],
                     ["Friday" : "JANUARY 5"]]
        self.dates = dates
    }

}




















