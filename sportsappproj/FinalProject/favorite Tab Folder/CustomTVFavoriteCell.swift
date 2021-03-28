//
//  CustomTVFavoriteCell.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/26/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit

class CustomTVFavoriteCell: UITableViewCell {

    @IBOutlet weak var favoriteLabelLeague: UILabel!
    @IBOutlet weak var favoriteImageLeague: UIImageView!
    @IBOutlet weak var favoriteVideoLeague: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func roundedEdgesCustomCell(){
        
        self.clipsToBounds = true
        self.layer.cornerRadius = 15
    }
    func customButtonDesign(){
        
        self.favoriteVideoLeague.clipsToBounds = true
        self.favoriteVideoLeague.layer.cornerRadius = (self.favoriteVideoLeague.bounds.height)/2
       
    }
    func customCircularCellImage()  {
        
        self.favoriteImageLeague.clipsToBounds = true
        self.favoriteImageLeague.layer.cornerRadius = (self.favoriteImageLeague.bounds.width)/2
        
    }


}
