//
//  Sports.swift
//  FinalProject
//
//  Created by MacOSSierra on 2/17/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import UIKit

struct Sports : Codable {
    
    var  sports = [AllSports]()
}

struct AllSports : Codable {
    var idSport : String
    var strSport: String
    var strFormat : String
    var strSportThumb : String
    var strSportThumbGreen : String
    var strSportDescription : String
    
    
}
