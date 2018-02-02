//
//  UpdatesTableVC.swift
//  App Store
//
//  Created by Chidi Emeh on 1/5/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class UpdatesTableVC: UITableViewController {
    
    var apps = [App]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

}

//MARK: Row Height
extension UpdatesTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 158
    }
    
}


//MARK: Data Source
extension UpdatesTableVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.updateTableViewCell.rawValue) as!
        UpdateTableViewCell
        
        cell.setUp(app: apps[indexPath.row])
        return cell
    }
    
}



//MARK: Load Fake Data

extension  UpdatesTableVC {
    
    func loadData(){
        let filePath = Bundle.main.path(forResource: "appStore-data", ofType: "json")
        let url = URL(fileURLWithPath: filePath!)
        
        do {
            let data = try Data(contentsOf: url)
            
            //let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            let appResult = try JSONDecoder().decode(Apps.self, from: data)
            guard let apps = appResult.results else { return }
            self.apps = apps
        }catch let error as NSError {
            print("Error loading data : \(error)")
        }
    }
}


//MARK: Segue

extension UpdatesTableVC {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segues.updateToDetailOpen.rawValue {
            
            let detailOpenTVC = segue.destination as! AppDetailOpenTableViewController
            guard let indexPath = sender as? NSIndexPath else { return }
            let updateTVcell = tableView.cellForRow(at: indexPath as IndexPath) as? UpdateTableViewCell
            
            print("Sent app is \(updateTVcell?.app?.artistName)")
            
            detailOpenTVC.app = updateTVcell?.app
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Segues.updateToDetailOpen.rawValue, sender: indexPath)
        
    }
    
}












