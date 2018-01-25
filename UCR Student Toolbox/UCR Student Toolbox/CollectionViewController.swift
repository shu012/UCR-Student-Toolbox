//
//  CollectionViewController.swift
//  UCR Student Toolbox
//
//  Created by John Spiropoulos on 09/01/2018.
//  Copyright © 2018 Sara Hu. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CollectionViewCell"

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    struct MenuItem {
        var title: String!
        var icon: UIImage!
    }

    var menuItems: [MenuItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set navigation controller navigation bar a background Image
        // Note: I have removed the header of the map view controller because now this is handled by the navigation controllers navigation bar. This must be done on all view controllers that are pushed from the navigation controller. I have also adjusted the lay out constraints on that view.
        navigationController?.navigationBar.setBackgroundImage(#imageLiteral(resourceName: "account_bgd.png"), for: .default)
        navigationController?.navigationBar.tintColor = .white
        
        menuItems = [
            MenuItem(title: "Map", icon: #imageLiteral(resourceName: "icon_map.png")),
            MenuItem(title:"Advising", icon: #imageLiteral(resourceName: "icon_friend.png")),
            MenuItem(title:"iLearn", icon: #imageLiteral(resourceName: "icon_ilearn.png")),
            MenuItem(title:"Schedule", icon: #imageLiteral(resourceName: "icon_schedule.png")),
            MenuItem(title:"Rate My Professor", icon: #imageLiteral(resourceName: "icon_professor.png")),
            MenuItem(title:"Dining", icon:#imageLiteral(resourceName: "icon_food.png")),
            MenuItem(title:"Building Hours", icon: #imageLiteral(resourceName: "icon_time.png")),
            MenuItem(title:"Food Trucks", icon: #imageLiteral(resourceName: "icon_truck.png")),
            MenuItem(title:"Study Rooms", icon: #imageLiteral(resourceName: "icon_books.png")),
            MenuItem(title:"Settings", icon: #imageLiteral(resourceName: "icon_settings.png")),
            MenuItem(title:"Safety", icon:#imageLiteral(resourceName: "icon_safety.png")),
            MenuItem(title:"Log Out", icon: #imageLiteral(resourceName: "lock_img.png"))
        ]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return menuItems.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
    
        let menuItem = menuItems[indexPath.row]
        // Configure the cell
        cell.menuLabel.text = menuItem.title
        cell.menuIconImageView.image = menuItem.icon
        
        return cell
    }

    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menuItem = menuItems[indexPath.row]
        var destinationController: UIViewController!
        
        // Note: You must set storyboard identifiers on the view controllers you want to push
        // Note 2: Please see that in order to only have a left arrow without text, I have set the back button title as a space (" ") on the storyboard navigation item of this view controller
        switch menuItem.title {
        case "Map":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "MapViewController") as! MapViewController
        case "Dining":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "DiningTableViewController") as! DiningTableViewController
        case "Rate My Professor":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "RateMyProfessorViewController") as! RateMyProfessorViewController
        case "Settings":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        case "Advising":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "AdvisingViewController") as! AdvisingViewController
        case "Study Rooms":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "StudyViewController") as! StudyViewController
        case "Safety":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "SafetyViewController") as! SafetyViewController
        case "Building Hours":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "BuildingTableViewController") as! BuildingTableViewController
        case "Food Trucks":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "TruckTableViewController") as! TruckTableViewController
        case "Schedule":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "ScheduleViewController") as! ScheduleViewController
        case "iLearn":
            destinationController = storyboard?.instantiateViewController(withIdentifier: "iLearnViewController") as! iLearnViewController
//        case "Log Out":
//            destinationController = storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        default:
            destinationController = storyboard?.instantiateViewController(withIdentifier: "MenuCollectionView") as! CollectionViewController
        }
        
        switch menuItem.title{
        case "Log Out":
            //link to sign in page
            let nextViewController = storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
            self.present(nextViewController, animated:true, completion:nil)
        default:
            navigationController?.pushViewController(destinationController, animated: true)
            
        }
    }

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width / 3
        let height = (collectionView.bounds.height - (navigationController?.navigationBar.bounds.height ?? 0)) / CGFloat(menuItems.count/3)
        
        return CGSize(width: width, height: height)
    }

}
