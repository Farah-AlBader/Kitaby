//
//  mainVC.swift
//  Kitaby
//
//  Created by Mac on 10/15/20.
//  Copyright © 2020 :). All rights reserved.
//

import UIKit

class mainVC: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpButton.layer.cornerRadius = 10
        logInButton.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp(_ sender: Any) {
    }
    
    @IBAction func logIn(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
