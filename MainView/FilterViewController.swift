//
//  FilterViewControllerTableViewController.swift
//  MainView
//
//  Created by Mohamed on 5/22/19.
//  Copyright © 2019 68lion. All rights reserved.
//

import UIKit


class FilterViewController: UITableViewController, UISearchResultsUpdating {

    var names = ["alex","bahary","kotln","newyork"]
    private let searchController = UISearchController.init(searchResultsController: nil)
    
    @IBOutlet var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchController()
        
        
//        let nib = UINib.init(nibName: "", bundle: <#T##Bundle?#>)

    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    // MARK: - Search Results Updating
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    func configureSearchController(){
        
        tableView.tableHeaderView = searchBar
    }
    
//    func updateResults(){
//        if let searchText=searchBar.text{
//            let selectedNames=names.filter{name in
//                let name2=name.conlowercased().c(<#T##other: StringProtocol##StringProtocol#>)
//            }
//
//        }
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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


