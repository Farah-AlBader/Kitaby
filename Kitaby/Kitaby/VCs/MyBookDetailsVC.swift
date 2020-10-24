//
//  MyBookDetailsVC.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/24/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class MyBookDetailsVC: UIViewController {
  
    @IBOutlet weak var bookImg: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookPriceLabel: UILabel!
    @IBOutlet weak var bookDescriptionLabel: UILabel!
    @IBOutlet weak var addToCart: UIButton!
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    var book2: Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookImg.image = UIImage(named: book2.image)
        bookNameLabel.text = book2.name
        bookPriceLabel.text = "\(book2.price) K.D"
        bookDescriptionLabel.text = book2.description
        navigationBar.title = book2.name
        
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
