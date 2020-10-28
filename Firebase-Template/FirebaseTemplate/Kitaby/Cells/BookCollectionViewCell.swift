//
//  BookCollectionViewCell.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookImg: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    func setBooks () {
        bookImg.image = UIImage(named: books[0].image)
        bookNameLabel.text = books[0].name
        bookPriceLabel.text = "\(books[0].price)"
        
    }
}
