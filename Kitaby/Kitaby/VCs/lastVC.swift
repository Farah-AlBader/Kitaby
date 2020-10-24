//
//  lastVC.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/22/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class lastVC: UIViewController {

    @IBOutlet weak var thankYouLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.231713295, green: 0.4123639166, blue: 0.4694299102, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
     override func viewWillDisappear(_ animated: Bool) {
           navigationItem.hidesBackButton = false
       }
       
       override func viewWillAppear(_ animated: Bool) {
           navigationItem.hidesBackButton = true
       }
    @IBAction func backToHomeButton(_ sender: UIButton) {
        cart = []
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
