//
//  cartCell.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/21/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class cartCell: UITableViewCell {

    @IBOutlet weak var cartImg: UIImageView!
    @IBOutlet weak var cartNameLabel: UILabel!
    @IBOutlet weak var cartPriceLabel: UILabel!
    @IBOutlet weak var writerNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure (cart: Book){
        cartImg.image = UIImage(named: cart.image)
        cartNameLabel.text = cart.name
        cartPriceLabel.text = "\(cart.price) K.D"
        writerNameLabel.text = cart.writer
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
