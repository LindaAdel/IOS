//
//  MyLeaguesTableViewController.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/19/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class MyLeaguesTableViewController: UIViewController {
   
    
    @IBOutlet weak var myTableView: UITableView!
    var sportsName : String?
    var leaguesDict : Leagues? = Leagues()
    var leagueArr : LeaguesInformations = LeaguesInformations()
    var leaguesIdArr = [String]()
    var savedUTubeLink :String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        fetchRequestForId()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
