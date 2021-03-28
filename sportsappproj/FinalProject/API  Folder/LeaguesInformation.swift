//
//  LeaguesInformation.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/19/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit

struct LeaguesInformations : Codable {
    
    var  leagues = [LeaguesInfo]()
}
struct LeaguesInfo : Codable {
    
    var strLeague: String?
    var strYoutube : String?
    var strBadge : String?
    var idLeague : String?

}
