//
//  SportTeamDetail.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/25/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit

struct TDetails :Codable {
    
    var teams = [TDetailsinfo]()
}
struct TDetailsinfo : Codable{
    
    var idTeam : String?
    var strTeam : String?
    var strTeamShort : String?
    var strAlternate : String?
    var intFormedYear : String?
    var strTeamLogo : String?
}
