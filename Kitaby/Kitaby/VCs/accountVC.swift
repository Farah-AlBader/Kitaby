//
//  accountVC.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/22/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit
import ALCameraViewController
import Firebase

class accountVC: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userID = Auth.auth().currentUser?.uid else {
            fatalError("this user doesn't exist!")
        }
        Networking.getSingleDocument("users/\(userID)", success: { (userinfo: User) in
            self.user = userinfo
        }) { (error) in
            print(error)
        }
        
        
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func addImgButton(_ sender: Any) {
        let cameraViewController = CameraViewController { [weak self] image, asset in
            // Do something with your image here.
            self?.dismiss(animated: true, completion: nil)
        }

        present(cameraViewController, animated: true, completion: nil)
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
