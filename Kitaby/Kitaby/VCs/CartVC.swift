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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLabel.text = "\(total)"
        // Do any additional setup after loading the view.
    }
     
    var totalPrice: [Double] = []
    var total: Double = 0.0
    
    func totalPrice (booksPrice: Double) {
        for i in cart {
            totalPrice.append(i.price)
        }
       total = totalPrice.reduce(0, +)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! cartCell
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