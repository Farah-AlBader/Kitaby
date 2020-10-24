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
      
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        total = cart.map{$0.price}.reduce(0, +)
        //totalPriceLabel.text = "\(total) K.D."
        totalPriceLabel.text = "\(String(format: "%.1f", total)) K.D"
        tableview.reloadData()
        
    }
  
    @IBAction func completeButton(_ sender: Any) {
        
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
