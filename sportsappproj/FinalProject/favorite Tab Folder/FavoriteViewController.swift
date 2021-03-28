//
//  FavoriteViewController.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/26/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import UIKit
import CoreData


class FavoriteViewController: UIViewController {

    var DB : DataBaseManger = DataBaseManger()
    var favArr  = [FavLeaguesEntity]()
    var favUTubeVd : String?
    
    @IBOutlet weak var favoriteTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteTableView.delegate = self
        favoriteTableView.dataSource = self
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        retriveFromCoreData()
    }
 
    func retriveFromCoreData(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let manageContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "FavLeaguesEntity")
        do{
            favArr = try manageContext.fetch(fetchRequest) as! [FavLeaguesEntity]
            favoriteTableView.reloadData()
            
        } catch let error
        { print(error)}
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
