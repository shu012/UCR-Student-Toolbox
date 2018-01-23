//
//  TruckLocationsViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 10/20/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit

class TruckLocationsViewController: ViewController {
    @IBOutlet weak var locWeb: UIWebView!
    
    var location = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: location)
        locWeb.loadRequest(URLRequest(url: url!))
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
