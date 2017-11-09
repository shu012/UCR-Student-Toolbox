//
//  HoursViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 10/21/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit

class HoursViewController: ViewController {
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var hoursWeb: UIWebView!
    var label = String()
    var htmlFile = String()
    var segueIdentifier = String()
    
    func loadHtmlFile() {
        let url = Bundle.main.url(forResource: htmlFile, withExtension:"html")
        let request = URLRequest(url: url!)
        hoursWeb.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(htmlFile)
        loadHtmlFile()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hoursLabel.text = label
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
