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

class accountVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myBook: [Book] = []
    
    
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let uid = Networking.getUserId()!
        Networking.getListOf(COLLECTION_NAME: "users/\(uid)/books") { (book: [Book]) in
            self.myBook = book
            print(self.myBook)
            self.tableView.reloadData()
            
           // print (self.myBook)
        }
        
        guard let userID = Auth.auth().currentUser?.uid else {
            fatalError("this user doesn't exist!")
        }
        Networking.getSingleDocument("users/\(userID)", success: { (userinfo: User) in
            self.user = userinfo
            self.userNameLabel.text = self.user.fullName()
        }) { (error) in
            
            return error
            
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBook.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myBook", for: indexPath) as! MyBooksCell
        
        cell.configure(book: myBook[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "myBookDetails", sender: myBook[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let book = sender as! Book
        let vc = segue.destination as! MyBookDetailsVC
        vc.book2 = book
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
