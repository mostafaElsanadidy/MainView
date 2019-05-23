//
//  MainViewController.swift
//  MainView
//
//  Created by 68lion on 5/15/19.
//  Copyright © 2019 68lion. All rights reserved.
//

import UIKit

struct ViewCellIdentifiers {
    static let userCell = "reuseCell"
    static var numRow=3
}

class DataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewCellIdentifiers.numRow
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: ViewCellIdentifiers.userCell, for: indexPath)
        return cell
    }
}

class MainViewController: UITableViewController{
    
    
    @IBOutlet weak var reuseCell: TableViewCell!
    

    @IBOutlet weak var tableView2: UITableView!
    @IBOutlet weak var notiBellBarItem: UIBarButtonItem!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataSource=DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView2.dataSource=dataSource
        tableView2.delegate=dataSource
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 3{
            return ViewCellIdentifiers.numRow
        }
        else{
            return super.tableView(tableView, numberOfRowsInSection: section)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 3 && indexPath.row == 0{
            print("mostafa \(indexPath.section) \(indexPath.row)")
        return 84
        }
        else{
            return super.tableView(tableView, heightForRowAt: indexPath)
        }
    }

   
    
}

