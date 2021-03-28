//
//  DataBaseFile.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/28/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit
import CoreData

struct DataBaseManger {

//extension TheLeagueDetailsViewController {
    func addLeaguesToFav( Leagues : LeaguesInfo ){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let manageContext = appDelegate.persistentContainer.viewContext
        let favLeague = FavLeaguesEntity(context:manageContext )
         favLeague.idLeague = Leagues.idLeague
         favLeague.strBadge = Leagues.strBadge
         favLeague.strLeague = Leagues.strLeague
         favLeague.strYoutube = Leagues.strYoutube
        do{
        try  manageContext.save()
        }catch let error{
            print(error)
        }
    }
    
    func deleteFromFav(savedLeagueId : String){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let manageContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "FavLeaguesEntity")
        fetchRequest.predicate = NSPredicate(format: "idLeague == %@",savedLeagueId)
        do{
         let foundedItem = try manageContext.fetch(fetchRequest)
            if foundedItem.count != 0 {
                for i in foundedItem{
                    manageContext.delete(i)
                }
            }
            try manageContext.save()
        }catch let error{
            print(error)
        }
    }
    func alreadyAdded(savedLeagueId : String)->Bool{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let manageContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "FavLeaguesEntity")
        fetchRequest.predicate = NSPredicate(format: "idLeague == %@",savedLeagueId)
        do{
            let selectedItem = try manageContext.fetch(fetchRequest)
            if selectedItem.count != 0 {
                
                return true
            }
            
            
        }catch let error{
            print(error)
        }
        return false
    }
}
