//
//  connectivity.swift
//  FinalProject
//
//  Created by MacOSSierra on 3/1/21.
//  Copyright © 2021 asmaa. All rights reserved.
//

import Foundation
import Alamofire

class connectivity {
    class func isConnectedToInternet() -> Bool{
        return NetworkReachabilityManager()!.isReachable
    }
}
