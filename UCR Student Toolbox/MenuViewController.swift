//
//  MenuViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 10/5/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var menuWeb: UIWebView!
    var htmlFile = String()
    var segueIdentifier = String()

    func loadHtmlFile() {
        let url = Bundle.main.url(forResource: htmlFile, withExtension:"html")
        let request = URLRequest(url: url!)
        menuWeb.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadHtmlFile()
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
