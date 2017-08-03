//
//  SafetyViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 8/2/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit

class SafetyViewController: UIViewController {

    //add in the actual numbers
    @IBAction func campusCall(_ sender: UIButton) {
        guard let number = URL(string: "tel://" + "0000000000") else { return }
        UIApplication.shared.open(number, options: [:], completionHandler: nil)
    }
    
    @IBAction func ucpdCall(_ sender: UIButton) {
        guard let number = URL(string: "tel://" + "0000000000") else { return }
        UIApplication.shared.open(number, options: [:], completionHandler: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
