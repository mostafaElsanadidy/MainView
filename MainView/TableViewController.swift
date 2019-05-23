//
//  TableViewController.swift
//  MainView
//
//  Created by Mohamed on 5/19/19.
//  Copyright © 2019 68lion. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UICollectionViewDataSource{

    var numOfUsers=5
    var numOfRow=0
    var cellsHeight=0
    
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 600
        tableView.tableHeaderView=navBar
        
        if numOfUsers>0{
        let demoView = DemoView(frame: CGRect(x: 20, y: 470, width: 380, height: CGFloat(95+60*(numOfUsers-1))))
            view.addSubview(demoView)}
        
    }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        numOfRow=4+numOfUsers
        return numOfRow
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cellName=""
        
        switch indexPath.row {
        case 0:
            cellName="imageCell"
            
        case 1:
            cellName="informationCell"
          
        case 2:
            cellName="collectionCell"
           
        case 3:
            if numOfUsers==0{
                cellName="checkCell"
            }else{
                cellName="userCell1"}
            
           
        case numOfRow-1:
            cellName="checkCell"
            
        default:
            cellName="userCell2"
            
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        if let view=cell.viewWithTag(100){
       
        let demoView = DemoView(frame: view.frame)
        
            cell.addSubview(demoView)}
        
        return cell
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        if let view=cell.viewWithTag(2){
            
            let demoView = DemoView(frame: view.frame)
            
            cell.addSubview(demoView)}
        cell.layer.contentsRect=CGRect.init(x: 5, y: 5, width: 50, height: 50)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
