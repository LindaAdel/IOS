//
//  LeageDSecondPart.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/24/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit

struct allEvents : Codable {
    
    var events = [teamsEvents]()
}
struct teamsEvents : Codable {
    
    var strHomeTeam : String?
    var strAwayTeam : String?
    var intHomeScore : String?
    var intAwayScore : String?
    var  dateEvent :  String?
    var  strTime : String?
    var strEvent : String?
    
}
