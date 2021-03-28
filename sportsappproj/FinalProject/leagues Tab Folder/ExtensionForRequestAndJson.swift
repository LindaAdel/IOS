//
//  ExtensionForRequestAndJson.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/19/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import Alamofire
import SDWebImage

extension MyLeaguesTableViewController {
   
    func fetchRequestForId(){
       
      let request = Alamofire.request("https://www.thesportsdb.com/api/v1/json/1/all_leagues.php")
      request.responseJSON {
          myResponse in
        //  print(myResponse)
        self.leaguesDict = try! JSONDecoder().decode(Leagues.self, from: myResponse.data!)
        for item in 0..<self.leaguesDict!.leagues.count {
            if self.leaguesDict!.leagues[item].strSport == self.sportsName{
                self.leaguesIdArr.append(self.leaguesDict!.leagues[item].idLeague!)
            }
           
            
        }
        self.loop()
        
        }
    }
    
}
extension MyLeaguesTableViewController {
    
    func fetchRequestForTable(searchId : String){
    let request = Alamofire.request("https://www.thesportsdb.com/api/v1/json/1/lookupleague.php?id=\(searchId)")
        request.responseJSON {
            myResponse in
            switch (myResponse.result){
            case .success(_):
                let oneItem : LeaguesInformations = try! JSONDecoder().decode(LeaguesInformations.self, from: myResponse.data!)
           
              self.leagueArr.leagues.append(oneItem.leagues[0])
                if self.leagueArr.leagues.count == self.leaguesIdArr.count
              {
                DispatchQueue.main.async {
                    self.myTableView.reloadData()}
                
                }
            case .failure(let error):
                print(error)
            }
        }
        
    }
    func loop(){
      
        for i in 0..<self.leaguesIdArr.count{
            self.fetchRequestForTable(searchId: self.leaguesIdArr[i])
        }

    
         }
}




    

