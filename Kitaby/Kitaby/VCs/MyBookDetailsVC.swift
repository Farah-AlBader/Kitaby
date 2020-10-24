//
//  MyBookDetailsVC.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/24/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class MyBookDetailsVC: UIViewController {
  
   
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    @IBOutlet weak var bookWriterLabel: UILabel!
    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var bookDescription: UITextView!
    
    var book2: Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.231713295, green: 0.4123639166, blue: 0.4694299102, alpha: 1)
        bookNameLabel.text = book2.name
        bookPriceLabel.text = "\(book2.price) K.D"
        bookDescription.text = book2.description
        navigationBar.title = book2.name
        bookWriterLabel.text = book2.writer
        
        
        
        // Do any additional setup after loading the view.
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
