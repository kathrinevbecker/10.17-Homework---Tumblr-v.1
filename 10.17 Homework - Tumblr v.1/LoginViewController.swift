//
//  LoginViewController.swift
//  10.17 Homework - Tumblr v.1
//
//  Created by Becker, Kathrine V on 10/17/16.
//  Copyright © 2016 Becker, Kathrine V. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var cancelButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func didPressCancel(_ sender: AnyObject) {
        print("did press cancel")
        dismiss(animated: true, completion: nil)
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
