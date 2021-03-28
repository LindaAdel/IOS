//
//  ExtensionForAlamofire.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/17/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

extension MyViewController {
    func fetchRequest(){
       
   let request = Alamofire.request("https://www.thesportsdb.com/api/v1/json/1/all_sports.php")
        request.responseJSON {
           myResponse in
            //print(data)
           // let myData = try JSONEncoder().encode([Sports])
        
            self.sportsArray = try! JSONDecoder().decode(Sports.self, from:  myResponse.data!)
            //print(self.sportsArray.sports)
            DispatchQueue.main.async {
                self.MyCollectionViewController.reloadData()
            }
            
        }
       

    }
}
