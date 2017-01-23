//
//  ChangeDataViewController.swift
//  Register
//
//  Created by Mac on 2017/1/23.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class ChangeDataViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    var uid = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = FIRAuth.auth()?.currentUser {
            uid = user.uid
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func save(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "ConfirmViewControllerID")as! ConfirmViewController
        self.present(nextVC,animated:true,completion:nil)
    }

    
    
}
