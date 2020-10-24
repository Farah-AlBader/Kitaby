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
    @IBOutlet weak var addToCart: UIButton!
    @IBOutlet weak var bookWriterLabel: UILabel!
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    @IBOutlet weak var bookDiscrition: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.231713295, green: 0.4123639166, blue: 0.4694299102, alpha: 1)
        bookImg.image = UIImage(named: book1.image)
        bookNameLabel.text = book1.name
        bookPriceLabel.text = "\(book1.price) K.D"
        navigationBar.title = book1.name
        bookWriterLabel.text = book1.writer
        bookDiscrition.text = book1.description

        checkBooks()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToCartButton(_ sender: UIButton) {
        
        cart += [book1]
        print(cart)
        errorMessage(message: "You have added this book successfully to your cart 📖")
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
    
    func errorMessage(message: String){
        let alertController = UIAlertController(title: "done ✔", message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        present(alertController, animated: true)
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
