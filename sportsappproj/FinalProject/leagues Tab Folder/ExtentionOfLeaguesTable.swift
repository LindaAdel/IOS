//
//  ExtentionOfLeaguesTable.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/19/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension MyLeaguesTableViewController :UITableViewDelegate  {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let leagueDVC = storyboard?.instantiateViewController(withIdentifier: "leagueDVC") as? TheLeagueDetailsViewController{
            leagueDVC.savedLeague = self.leagueArr.leagues[indexPath.row]
            leagueDVC.savedId = self.leagueArr.leagues[indexPath.row].idLeague
            leagueDVC.modalTransitionStyle = .flipHorizontal
            self.present( leagueDVC , animated: true, completion: nil )}
    }
    
}
extension MyLeaguesTableViewController :UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
       return leagueArr.leagues.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! CustomTableViewCell
        cell.roundedEdgesCustomCell()
        cell.customCircularCellImage()
        cell.customButtonDesign()
        cell.leagueBudgeImage.sd_setImage(with: URL(string: self.leagueArr.leagues[indexPath.row].strBadge!))
        cell.leagueNameLabel.text = leagueArr.leagues[indexPath.row].strLeague
        if leagueArr.leagues[indexPath.row].strYoutube == "" {
            cell.videoButtonOutlet.isHidden = true
        }
        cell.videoButtonOutlet.tag = indexPath.row
        cell.videoButtonOutlet.addTarget(self, action: #selector(navigation), for: .touchUpInside)
       
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    @objc func navigation(sender : UIButton)
    {
       let indexp = IndexPath(row: sender.tag, section: 0)
      savedUTubeLink = leagueArr.leagues[indexp.row].strYoutube
       print(savedUTubeLink!)
       
         UIApplication.shared.open(URL(string: "https://\(savedUTubeLink!)")!, options: [:], completionHandler: nil)
    
    }

}

