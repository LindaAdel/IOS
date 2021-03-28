//
//  ExtensionOfFavoriteVC.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/26/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import SDWebImage
import Alamofire

extension FavoriteViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if connectivity.isConnectedToInternet(){
        if let leagueDVC = storyboard?.instantiateViewController(withIdentifier: "leagueDVC") as? TheLeagueDetailsViewController{
            leagueDVC.modalTransitionStyle = .flipHorizontal
            self.present( leagueDVC , animated: true, completion: nil )}
        }
        else
        {
           let alert = UIAlertController(title: "Connection Failed", message: "please check your internet ", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert,animated: true , completion: nil)
        }
    }
}
extension FavoriteViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favArr.count // dynamic according saved items
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = favoriteTableView.dequeueReusableCell(withIdentifier: "favcell", for: indexPath) as! CustomTVFavoriteCell
        cell.roundedEdgesCustomCell()
        cell.customCircularCellImage()
        cell.customButtonDesign()
        cell.favoriteImageLeague.sd_setImage(with: URL(string: self.favArr[indexPath.row].strBadge!))
        cell.favoriteLabelLeague.text = favArr[indexPath.row].strLeague
        
        if favArr[indexPath.row].strYoutube == "" {
        cell.favoriteVideoLeague.isHidden = true
        }
        cell.favoriteVideoLeague.tag = indexPath.row
        cell.favoriteVideoLeague.addTarget(self, action: #selector( goToVd ), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
          if editingStyle == .delete {
            // Delete the row from the data source
            DB.deleteFromFav(savedLeagueId: favArr[indexPath.row].idLeague!)
            favArr.remove(at: indexPath.row)
            favoriteTableView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    @objc func goToVd(sender : UIButton)
    {
        let indexp = IndexPath(row: sender.tag, section: 0)
        favUTubeVd = favArr[indexp.row].strYoutube
         UIApplication.shared.open(URL(string: "https://\(favUTubeVd!)")!, options: [:], completionHandler: nil)
    }
    
}
