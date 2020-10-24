//
//  CartVC.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/21/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class CartVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var tableview: UITableView!
    
    var totalPrice: [Double] = []
    var total: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
         self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.231713295, green: 0.4123639166, blue: 0.4694299102, alpha: 1)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        total = cart.map{$0.price}.reduce(0, +)
        //totalPriceLabel.text = "\(total) K.D."
        totalPriceLabel.text = "\(String(format: "%.1f", total)) K.D"
        tableview.reloadData()
        
    }
  
    @IBAction func completeButton(_ sender: Any) {
        if cart.count == 0 {
            errorMessage(message: "your cart is empty! \n Don't be shy add some books 😉")
        }
        
    }
    
    func errorMessage(message: String){
        let alertController = UIAlertController(title: "Opps🙈", message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! cartCell
        
        cell.configure(cart: cart[indexPath.row])
        
        return cell
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
