//
//  RateMyProfessorViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 7/27/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit

class RateMyProfessorViewController: UIViewController {

    @IBOutlet weak var professorView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://www.ratemyprofessors.com/search.jsp?queryoption=TEACHER&queryBy=schoolDetails&schoolID=1076&schoolName=University+of+California+Riverside&dept=select")
        
        professorView.loadRequest(URLRequest(url: url!))
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
