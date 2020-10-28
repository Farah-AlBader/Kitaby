//
//  MyBooksCell.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/24/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class MyBooksCell: UITableViewCell {

    @IBOutlet weak var myBookImg: UIImageView!
    @IBOutlet weak var myBookName: UILabel!
    @IBOutlet weak var myBookPrice: UILabel!
    @IBOutlet weak var myBookWriter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
    func configure(book: Book) {
        myBookImg.image = UIImage(named: book.image)
        myBookName.text = book.name
        myBookWriter.text = book.writer
        myBookPrice.text = "\(book.price) K.D"
        print("\(book) 📖")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
