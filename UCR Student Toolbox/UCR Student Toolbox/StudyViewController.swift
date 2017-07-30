//
//  StudyViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 7/29/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit

class StudyViewController: UIViewController {

    @IBOutlet weak var studyView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://ucr.evanced.info/dibs/Login")
        
        studyView.loadRequest(URLRequest(url: url!))
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
