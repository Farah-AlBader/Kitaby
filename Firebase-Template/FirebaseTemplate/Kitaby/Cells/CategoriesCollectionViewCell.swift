//
//  CategoriesCollectionViewCell.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categorieLabel: UILabel!
    
    
    
    func configure (category: Category) {
        categorieLabel.text = category.category
        
    }
}
