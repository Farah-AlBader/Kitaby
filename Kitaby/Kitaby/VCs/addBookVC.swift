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
    @IBOutlet weak var categoryLabel: UITextField!
    @IBOutlet weak var PriceLabel: UITextField!
    @IBOutlet weak var bookDescription: UITextField!
    
    let uid = Networking.getUserId()!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addBookButton(_ sender: Any) {
        let book = Book(name: bookNameLabel.text!, category: categoryLabel.text!, price: Double(PriceLabel.text!)!, image: "", description: bookDescription.text!)
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
