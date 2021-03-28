//
//  CustomTVSecondSectionCell.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit

class CustomTVSecondSectionCell: UITableViewCell {
    @IBOutlet weak var versusImage: UIImageView!
    var versusImg = UIImage(named: "versus")
    
    
    @IBOutlet weak var firstTeamName: UILabel!
    @IBOutlet weak var firstTeamScore: UILabel!
    
    @IBOutlet weak var secondTeamName: UILabel!
    @IBOutlet weak var secondTeamScore: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
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
    func customCircularCellImage()  {
        
        self.versusImage.clipsToBounds = true
        self.versusImage.layer.cornerRadius = (self.versusImage.bounds.width)/2
        
    }


}
