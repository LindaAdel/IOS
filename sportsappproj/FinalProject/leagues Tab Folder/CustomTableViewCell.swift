//
//  CustomTableViewCell.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/19/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit
import SDWebImage

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var videoButtonOutlet: UIButton!
   
    @IBOutlet weak var leagueBudgeImage: UIImageView!
    @IBOutlet weak var leagueNameLabel: UILabel!
    @IBAction func youTubeButton(_ sender: UIButton) {

    }
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
        
     self.videoButtonOutlet.clipsToBounds = true
     self.videoButtonOutlet.layer.cornerRadius = (self.videoButtonOutlet.bounds.height)/2
   /*  self.videoButtonOutlet.layer.shadowColor = UIColor.black.cgColor
     self.videoButtonOutlet.layer.shadowRadius = 4
     self.videoButtonOutlet.layer.shadowOpacity = 0.5
     self.videoButtonOutlet.layer.shadowOffset = CGSize(width: 0, height: 0)*/
    }
    func customCircularCellImage()  {
        
     self.leagueBudgeImage.clipsToBounds = true
     self.leagueBudgeImage.layer.cornerRadius = (self.leagueBudgeImage.bounds.width)/2

    }

}
