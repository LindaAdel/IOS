//
//  ExtensionForCollectionView.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/17/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension MyViewController : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let tableVC = storyboard?.instantiateViewController(withIdentifier: "tableVC") as? MyLeaguesTableViewController{
          tableVC.sportsName = self.sportsArray.sports[indexPath.row].strSport
        tableVC.modalTransitionStyle = .flipHorizontal
            self.present( tableVC , animated: true, completion: nil )}
    }
}

extension MyViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (sportsArray.sports.count)
    }
  
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MyCollectionViewController.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
       cell.roundedEdgesCustomCell()
       cell.MyCellsTitle.text = sportsArray.sports[indexPath.row].strSport
       cell.MyCellsImage.sd_setImage(with: URL(string: sportsArray.sports[indexPath.row].strSportThumb))
       
      return cell
    }
    
    
    
}
extension MyViewController : UICollectionViewDelegateFlowLayout{
    

   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
          return 0
    }
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
     {
        let width = (MyCollectionViewController.bounds.width)/2
        return CGSize(width: width, height: width)
    }
    
    
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets.init(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
    }

/*
 func setUpCollectionViewItemSize()
 {
    if  collectionViewFlowLayout == nil {
        let numberOfItemPerRow : CGFloat = 2
        let lineSpacing : CGFloat = 2
        let interItemSpacing : CGFloat = 2
        let width = (MyCollectionViewController.frame.width - (numberOfItemPerRow-1) * interItemSpacing)/numberOfItemPerRow
        
        let height = width
        collectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionViewFlowLayout.itemSize = CGSize(width: width, height: height)
        collectionViewFlowLayout.minimumLineSpacing = lineSpacing
        collectionViewFlowLayout.minimumInteritemSpacing = interItemSpacing

        
        MyCollectionViewController.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        
    }
}*/
}



