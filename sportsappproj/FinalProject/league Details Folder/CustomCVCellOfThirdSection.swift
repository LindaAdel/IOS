//
//  CustomCVCellOfThirdSection.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/23/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit

class CustomCVCellOfThirdSection: UICollectionViewCell {
    
    @IBOutlet weak var teamsImage: UIImageView!
    
    func roundedEdgesCustomCell(){
        
        self.clipsToBounds = true
        self.layer.cornerRadius = 15
    }
    func customCircularCellImage()  {
        
        self.teamsImage.clipsToBounds = true
        self.teamsImage.layer.cornerRadius = (self.teamsImage.bounds.width)/2
        
    }

}
