//
//  iLearnViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 7/27/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit
import JavaScriptCore

class iLearnViewController: UIViewController {
    @IBOutlet weak var iLearnWeb: UIWebView!
    
    func webViewDidFinishLoad(webView: UIWebView) {

        // fill data
        let savedUsername = "username"
        let savedPassword = "password"

        let fillForm = String(format: "document.getElementById('username').value = '\(savedUsername)';document.getElementById('password').value = '\(savedPassword)';")
        webView.stringByEvaluatingJavaScript(from: fillForm)

        //submit form
//        dispatch_after(DispatchTime.now(dispatch_time_t(DISPATCH_TIME_NOW), Int64(1 * NSEC_PER_SEC)), dispatch_get_main_queue()){
//            webView.stringByEvaluatingJavaScript(from: "document.forms[0].submit();")
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://ilearn.ucr.edu/webapps/bb-auth-provider-cas-bb_bb60/execute/casLogin?cmd=login&authProviderId=_102_1&redirectUrl=https%3A%2F%2Filearn.ucr.edu%2F")
        
        iLearnWeb.loadRequest(URLRequest(url: url!))
        webViewDidFinishLoad(webView: iLearnWeb)
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
