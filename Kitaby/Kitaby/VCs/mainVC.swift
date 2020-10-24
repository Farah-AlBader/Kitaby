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
         self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.231713295, green: 0.4123639166, blue: 0.4694299102, alpha: 1)
        signUpButton.layer.cornerRadius = 10
        logInButton.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp(_ sender: Any) {
        performSegue(withIdentifier: "goToSignUp", sender: nil)
    }
    
    @IBAction func logIn(_ sender: Any) {
        performSegue(withIdentifier: "goToLogIn", sender: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationItem.hidesBackButton = false
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.hidesBackButton = true
        navigationController?.navigationBar.isHidden = true
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
