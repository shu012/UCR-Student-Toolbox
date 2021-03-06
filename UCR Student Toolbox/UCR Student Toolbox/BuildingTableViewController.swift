//
//  BuildingTableViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 9/6/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit

class BuildingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
//    var building = [(name: "Orbach Library", image: "library"), (name: "Rivera Library", image: "library"), (name: "Student Recreation Center", image: "gym"), (name: "Bookstore", image: "bookstore"), (name: "Student Services", image: "service"), (name: "Botanical Gardens", image: "garden")]
    
    var building = [(name: "Orbach Library", image: "library", html: "orbach"), (name: "Rivera Library", image: "library", html: "rivera"), (name: "Student Recreation Center", image: "gym", html: "gym"), (name: "Bookstore", image: "bookstore", html: "bookstore"), (name: "Student Services", image: "service", html: "sservice"), (name: "Botanical Gardens", image: "garden", html: "garden")]
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return building.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BuildingTableViewCell", for: indexPath)
        
        let place = building[indexPath.row].name
        cell.textLabel?.text = place
        //cell.imageView?.image = UIImage(named: building[indexPath.row].image)
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    let buildingSegueIdentifier = "ShowHourSegue"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == buildingSegueIdentifier,
            let  destination = segue.destination as? HoursViewController,
            let index = tableView.indexPathForSelectedRow?.row {
            destination.htmlFile = building[index].html
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
