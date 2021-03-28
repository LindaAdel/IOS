//
//  ExtensionOfRequestsAndJsonsParse.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/23/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import Alamofire

extension TheLeagueDetailsViewController {
    
func fetchRequestForTeamsImages(searchId : String ){
    let request = Alamofire.request("https://www.thesportsdb.com/api/v1/json/1/lookup_all_teams.php?id=\(searchId)")
    request.responseJSON {
    
        myResponse in
       // print(myResponse)
        self.ThirdSectionApiDict = try! JSONDecoder().decode(allTeams.self, from:  myResponse.data!)
       // print(self.ThirdSectionApiDict)
        DispatchQueue.main.async {
        self.collectionViewThirdSection.reloadData()
        }
    }
    
}
    func fetchRequestForTeamsEvents(searchId : String){
    let request = Alamofire.request("https://www.thesportsdb.com/api/v1/json/1/eventspastleague.php?id=\(searchId)")
        request.responseJSON {
            
            myResponse in
            // print(myResponse)
            self.secondSectionApiDict = try! JSONDecoder().decode(allEvents.self, from:  myResponse.data!)
            //print(self.secondSectionApiDict)
            DispatchQueue.main.async {
                self.tableViewSecondSection.reloadData()
                self.firstSectionCV.reloadData()
            }
        }
        
    }
}
