//
//  TeamsImagesThirdSection.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/23/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit

struct allTeams : Codable {
    var teams = [allTeamsLookUp]()
}
struct allTeamsLookUp : Codable {
    
    var strTeamBadge : String?
    var idTeam : String?
    
}
