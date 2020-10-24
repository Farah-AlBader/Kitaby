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
    @IBOutlet weak var bookDescription: UITextField!
    
    let uid = Networking.getUserId()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.231713295, green: 0.4123639166, blue: 0.4694299102, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addBookButton(_ sender: Any) {
        let book = Book(name: bookNameLabel.text!, writer: bookWriterName.text!, category: categoryLabel.text!, price: Double(PriceLabel.text!)!, image: "", description: bookDescription.text!)
        Networking.createItem(book, inCollection: "users/\(uid)/books") {
            
            print("yaaaaaaay🥳")
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
