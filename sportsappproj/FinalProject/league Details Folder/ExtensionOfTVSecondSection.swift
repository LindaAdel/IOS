//
//  ExtensionTVSecondSection.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit

extension TheLeagueDetailsViewController : UITableViewDelegate {
    
}

extension TheLeagueDetailsViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondSectionApiDict.events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableViewSecondSection.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! CustomTVSecondSectionCell
        cell.customCircularCellImage()
        cell.roundedEdgesCustomCell()
         var vsImagesArr = [UIImage](repeating: UIImage(named: "versus")! , count:secondSectionApiDict.events.count)
        cell.firstTeamName.text = secondSectionApiDict.events[indexPath.row].strHomeTeam
        cell.secondTeamName.text = secondSectionApiDict.events[indexPath.row].strAwayTeam
        cell.firstTeamScore.text = secondSectionApiDict.events[indexPath.row].intHomeScore
        cell.secondTeamScore.text = secondSectionApiDict.events[indexPath.row].intAwayScore
        cell.dateLabel.text = secondSectionApiDict.events[indexPath.row].dateEvent
        cell.timeLabel.text = secondSectionApiDict.events[indexPath.row].strTime
        cell.versusImage.image = vsImagesArr[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}
