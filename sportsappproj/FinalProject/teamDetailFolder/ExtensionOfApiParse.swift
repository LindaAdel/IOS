//
//  ExtensionOfApiParse.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/25/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import Alamofire
import SDWebImage

extension TeamDetailsVC {
    func fetchRequestForTeamsDetails(searchId : String ){
        let request = Alamofire.request("https://www.thesportsdb.com/api/v1/json/1/lookupteam.php?id=\(searchId)")
        request.responseJSON {
            myResponse in
           
            self.detailsApiDict = try! JSONDecoder().decode(TDetails.self, from:  myResponse.data!)
           
            for item in 0..<self.detailsApiDict.teams.count{
       self.teamNameLabel.text = self.detailsApiDict.teams[item].strTeam
                
                
        self.TeamAlternativeNamesLabel.text = self.detailsApiDict.teams[item].strAlternate
            self.teamFoundationYear.text = self.detailsApiDict.teams[item].intFormedYear
            self.teamAbreviationLabel.text = self.detailsApiDict.teams[item].strTeamShort
                self.teamImageBanner.sd_setImage(with: URL(string: self.detailsApiDict.teams[item].strTeamLogo!))
            }
            DispatchQueue.main.async {
                self.viewDidLoad()
                
            }
           
        }
    }
}
