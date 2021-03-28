//
//  CustomCollectionViewCell.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/17/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var MyCellsImage: UIImageView!
    
    @IBOutlet weak var MyCellsTitle: UILabel!
    
    func roundedEdgesCustomCell(){
        
        self.clipsToBounds = true
        self.layer.cornerRadius = 15
    }
}
