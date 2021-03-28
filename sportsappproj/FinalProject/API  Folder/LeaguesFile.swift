//
//  LeaguesFile.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/19/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit

struct Leagues : Codable {
    
    var  leagues = [sportLeague]()
}

struct sportLeague : Codable {
   var idLeague : String?
   var strLeague : String?
    var strSport : String?
    var strLeagueAlternate : String?
}
