//
//  TheLeagueDetailsViewController.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit

class TheLeagueDetailsViewController: UIViewController {

  
    @IBOutlet weak var firstSectionCV: UICollectionView!
    @IBOutlet weak var tableViewSecondSection: UITableView!
    
    @IBOutlet weak var collectionViewThirdSection: UICollectionView!
    
   
    
    var savedId : String?
    var savedLeague : LeaguesInfo?
    var ThirdSectionApiDict : allTeams = allTeams()
    var secondSectionApiDict : allEvents = allEvents()
    var db : DataBaseManger = DataBaseManger()
   
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        fetchRequestForTeamsImages(searchId: savedId!)
        fetchRequestForTeamsEvents(searchId: savedId!)
        
       collectionViewThirdSection.delegate = self
       collectionViewThirdSection.dataSource = self
        
       firstSectionCV.delegate = self
       firstSectionCV.dataSource = self
        
        tableViewSecondSection.delegate = self
        tableViewSecondSection.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addToFavorites(_ sender: UIBarButtonItem) {
      
        if( db.alreadyAdded(savedLeagueId: savedLeague!.idLeague!) == true) {
            let alert = UIAlertController(title: "Already Added", message: "you already added this to your favorite list ", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert,animated: true , completion: nil)
           }

        else{
              db.addLeaguesToFav(Leagues: savedLeague!)
        }
        
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


