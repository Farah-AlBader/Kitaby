//
//  addBookVC.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/22/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit
import Firebase

class addBookVC: UIViewController {

    @IBOutlet weak var bookNameLabel: UITextField!
    @IBOutlet weak var bookWriterName: UITextField!
    @IBOutlet weak var categoryLabel: UITextField!
    @IBOutlet weak var PriceLabel: UITextField!
    @IBOutlet weak var bookDescreption: UITextView!
    
    
    let uid = Networking.getUserId()!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.231713295, green: 0.4123639166, blue: 0.4694299102, alpha: 1)
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func addBook(_ sender: Any) {
       
        check()
        
        let book = Book(name: bookNameLabel.text!, writer: bookWriterName.text!, category: categoryLabel.text!, price: Double(PriceLabel.text!)!, image: "", description: bookDescreption.text!)
        Networking.createItem(book, inCollection: "users/\(uid)/books") {
            print("yaaaaaaay🥳")
            self.errorMessage(message: "You have added this book for all peaople to buy successfully! 📖")
        }
        
        if categoryLabel.text == "children" {
            childrenBooks.append(book)
            print("\(childrenBooks)")
        }else if categoryLabel.text == "crime"{
            crime.append(book)
            print("\(crime)")
        }else if categoryLabel.text == "romance"{
            romance.append(book)
            print("\(romance)")
        }else if categoryLabel.text == "Fantasy"{
            fantasy.append(book)
            print(fantasy)
        }else {
            print("this category is unavailable at the moment")
        }
    }
    
    func errorMessage(message: String){
        let alertController = UIAlertController(title: "yay 🥳", message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    func check () {
        if bookNameLabel.text == "" || bookWriterName.text == "" || bookDescreption.text == "" || PriceLabel.text == "" || categoryLabel.text == "" {
            
            errorMessage2(message: "You have to fill all the book information to continue 🤔")
            
        }
    }
    
    func errorMessage2(message: String){
        let alertController = UIAlertController(title: "Opps🙈", message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
