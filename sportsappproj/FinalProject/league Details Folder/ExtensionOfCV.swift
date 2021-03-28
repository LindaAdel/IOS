//
//  ExtensionOfCVFirstsection.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension TheLeagueDetailsViewController : UICollectionViewDelegate{
func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if(collectionView == collectionViewThirdSection){
    if let TDVC = storyboard?.instantiateViewController(withIdentifier: "TDVC") as? TeamDetailsVC{
         TDVC.TeamId = ThirdSectionApiDict.teams[indexPath.row].idTeam
        TDVC.modalTransitionStyle = .flipHorizontal
        self.present( TDVC , animated: true, completion: nil )}
    }
    }
}

extension TheLeagueDetailsViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       if(collectionView == collectionViewThirdSection){
            return ThirdSectionApiDict.teams.count}
        
        return secondSectionApiDict.events.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if(collectionView == collectionViewThirdSection){
        let cell = collectionViewThirdSection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCVCellOfThirdSection
        cell.roundedEdgesCustomCell()
        cell.customCircularCellImage()
        cell.teamsImage.sd_setImage(with: URL(string: ThirdSectionApiDict.teams[indexPath.row].strTeamBadge!))
      //  cell.teamsImage.target(forAction: #selector(imageTapped) , withSender: self)
 /*  let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        cell.teamsImage.isUserInteractionEnabled = true
        cell.teamsImage.addGestureRecognizer(tapGestureRecognizer)
        cell.teamsImage.tag = indexPath.row*/
        
            return cell}
        
        let cellFS = firstSectionCV.dequeueReusableCell(withReuseIdentifier: "cellFS", for: indexPath) as! CustomCVCellOfFirstSection
        cellFS.roundedEdgesCustomCell()
        cellFS.eventNameLabel.text = self.secondSectionApiDict.events[indexPath.row].strEvent
        cellFS.eventDateLabel.text = self.secondSectionApiDict.events[indexPath.row].dateEvent
        cellFS.eventTimeLabel.text = self.secondSectionApiDict.events[indexPath.row].strTime
        
    return cellFS
       
    }
  /* @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
      //  let indexp = IndexPath(row: sender.tag, section: 0)
     
        if let TDVC = storyboard?.instantiateViewController(withIdentifier: "TDVC") as? TeamDetailsVC{
        //   TDVC.TeamId = ThirdSectionApiDict.teams[indexp].
            TDVC.modalTransitionStyle = .flipHorizontal
            self.present( TDVC , animated: true, completion: nil )}
    }*/
    
}


extension TheLeagueDetailsViewController : UICollectionViewDelegateFlowLayout {
    
}
