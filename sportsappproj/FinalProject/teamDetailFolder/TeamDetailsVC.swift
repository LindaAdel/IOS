//
//  TeamDetailsVC.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/25/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit

class TeamDetailsVC: UIViewController {
    var detailsApiDict :  TDetails = TDetails()
    var TeamId : String?
 //   var teamsIdArr = [String]()

    
    @IBOutlet weak var teamImageBanner: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamAbreviationLabel: UILabel!
    
    @IBOutlet weak var TeamAlternativeNamesLabel: UILabel!
    
    @IBOutlet weak var teamFoundationYear: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      	  fetchRequestForTeamsDetails(searchId: TeamId!)
        view.backgroundColor = UIColor(patternImage: (UIImage(named: "background")!)/*.resizableImage(withCapInsets: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))*/)
        customRoundedLabel(label: teamNameLabel)
        customRoundedLabel(label: teamAbreviationLabel)
        customRoundedLabel(label: TeamAlternativeNamesLabel)
        customRoundedLabel(label: teamFoundationYear)
        customCircularCellImage()
       
        
       // self.dismiss(animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }
    func customRoundedLabel(label : UILabel)  {
        
        label.clipsToBounds = true
        label.layer.cornerRadius = 15
        
    }
    func customCircularCellImage()  {
        
        self.teamImageBanner.clipsToBounds = true
        self.teamImageBanner.layer.cornerRadius = 15
            //(self.teamImageBanner.bounds.width)/2
        
    }

    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   

}
