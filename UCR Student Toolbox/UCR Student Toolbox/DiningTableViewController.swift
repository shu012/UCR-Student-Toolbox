//
//  DiningTableViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 8/8/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit

class DiningTableViewController: UITableViewController {

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
    var dining = [(name: "AI", image: "ai", html: "ai"), (name: "Lothian", image: "lothian", html: "lothian"), (name: "Spinelli's", image: "spinelli", html: "spinelli"), (name: "Glen Mor Market Shop", image: "gmshop", html: "gmshop"), (name: "Glen Mor Market Sizzle", image: "gmsizzle", html: "gmsizzle"), (name: "Glen Mor Market Savor", image: "gmsavor", html: "gmsavor"), (name: "Glen Mor Market Starbucks", image: "gmstarbucks", html: "gmstarbucks"), (name: "HUB Scotty's", image: "scottys", html: "hubscot"), (name: "AI Scotty's", image: "scottys", html: "aiscot"), (name: "Lothian Scotty's", image: "scottys", html: "lothianscot"), (name: "Glen Mor Scotty's", image: "scottys", html: "gmscot"), (name: "School of Medicine Scotty's", image: "scottys", html: "medscot"), (name: "The Barn", image: "barn", html: "barn"), (name: "Bytes", image: "bytes", html: "bytes"), (name: "Ivan's", image: "ivan", html: "ivan"), (name: "Subway", image: "subway", html: "subway"), (name: "Habanero's", image: "habanero", html: "habanero"), (name: "HUB2GO", image: "hub", html: "hub"), (name: "Panda Express", image: "panda", html: "panda"), (name: "Panda Express Sushi", image: "pandasushi", html: "pandasushi"), (name: "La Fiamma", image: "fiamma", html: "fiamma"), (name: "The Grill", image: "grill", html: "grill"), (name: "Coffee Bean", image: "coffeebean", html: "coffeebean"), (name: "Chameleon", image: "chameleon", html: "chameleon"), (name: "Moo Moo", image: "moomoo", html: "moomoo"), (name: "Highlander", image: "highlander", html: "highlander"), (name: "Bear Tracks", image: "beartracks", html: "beartracks")]
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dining.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiningTableViewCell", for: indexPath)
        
        let place = dining[indexPath.row].name
        cell.textLabel?.text = place
//        cell.imageView?.image = UIImage(named: dining[indexPath.row].image)
        
        return cell
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    let menuSegueIdentifier = "ShowMenuSegue"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == menuSegueIdentifier,
            let  destination = segue.destination as? MenuViewController,
            let index = tableView.indexPathForSelectedRow?.row {
            destination.label = dining[index].name
            destination.menuHTML = dining[index].html
        }
    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 2
//    }

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

