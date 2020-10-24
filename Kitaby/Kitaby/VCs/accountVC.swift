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

var myBook: [Book] = []

class accountVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var logOut: UIButton!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.231713295, green: 0.4123639166, blue: 0.4694299102, alpha: 1)
        
        guard let userID = Auth.auth().currentUser?.uid else {
            fatalError("this user doesn't exist!")
        }
        Networking.getSingleDocument("users/\(userID)", success: { (userinfo: User) in
            self.user = userinfo
            self.userNameLabel.text = self.user.fullName()
        }) { (error) in
            
            return error
            
        }
        
        logOut.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        retrieveAllBooks()
    }
    
    @IBAction func addImgButton(_ sender: Any) {
        let cameraViewController = CameraViewController { [weak self] image, asset in
            // Do something with your image here.
            self?.dismiss(animated: true, completion: nil)
        }

        present(cameraViewController, animated: true, completion: nil)
        
    }
    
    func retrieveAllBooks(){
        guard let uid = Networking.getUserId() else{
            print("Coulndn't retreive books")
            return
        }
        Networking.getListOf(COLLECTION_NAME: "users/\(uid)/books") { (book: [Book]) in
            myBook = book
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.tableView.reloadData()
            }
            print("\(myBook)  🧙🏻‍♂️")
        }
    }
    
    @IBAction func signOut(_ sender: Any) {
       let alertController = UIAlertController(title: "Sign out!", message: "Are you sure you want to sign out?" , preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(cancelAction)
        let okAction = UIAlertAction(title: "Sign out!", style: .destructive) { action in
            Networking.signOut(success: {
                // Goes back to the previous presented Modally view controller (SignInVC)
                self.performSegue(withIdentifier: "signedOut", sender: nil)
//                self.dismiss(animated: true, completion: nil)
            })
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
    
    func errorMessage(message: String){
        let alertController = UIAlertController(title: "Opps🙈", message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        present(alertController, animated: true)
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
        if segue.identifier == "myBookDetails" {
        let book = sender as! Book
        let vc = segue.destination as! MyBookDetailsVC
        vc.book2 = book
        } 
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
