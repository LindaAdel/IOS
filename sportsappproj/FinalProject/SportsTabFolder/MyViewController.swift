//
//  ViewController.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/17/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage

class MyViewController: UIViewController {

   
    @IBOutlet weak var MyCollectionViewController: UICollectionView!
    var sportsArray : Sports = Sports()
 // var collectionViewFlowLayout : UICollectionViewFlowLayout!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
                                                                       
                                                                       
       fetchRequest()
        
       // setUpCollectionViewItemSize()
        // Do any additional setup after loading the view.
        MyCollectionViewController.delegate = self
        MyCollectionViewController.dataSource = self
 
        
     
    }


}

