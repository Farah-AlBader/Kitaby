//
//  bookVC.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/20/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

 var cart: [Book] = []

class bookVC: UIViewController {

    var book1: Book!
   
    
    @IBOutlet weak var bookImg: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookPriceLabel: UILabel!
    @IBOutlet weak var bookDescriptionLabel: UILabel!
    @IBOutlet weak var addToCart: UIButton!
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookImg.image = UIImage(named: book1.image)
        bookNameLabel.text = book1.name
        bookPriceLabel.text = "\(book1.price) K.D."
        bookDescriptionLabel.text = book1.description
        navigationBar.title = book1.name
        checkBooks()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToCartButton(_ sender: UIButton) {
        
        cart += [book1]
        print(cart)
        sender.isEnabled = false
        sender.setImage(UIImage(systemName: "cart.fill"), for: .normal)
        
    }
    
    func checkBooks (){
        for i in cart {
            if i.name == book1.name {
                addToCart.isHidden = true
            }
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
