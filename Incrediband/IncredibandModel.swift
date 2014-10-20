//
//  IncredibandModel.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/1/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation
import UIKit

// Here is the class used to hold info when the user is onboarding into Incrediband
class IncredibandOnboard {

    var instrument: String
    var location: Int
    var skillLevel: String
    var userName: String
    var profileID: String
    
    
    // Initializing variables in the onboarding class like a boss.
    init(instrument:String, location:Int, skillLevel:String, userName:String, profileID:String) {
        self.instrument = instrument
        self.location = location
        self.skillLevel = skillLevel
        self.userName = userName
        self.profileID = profileID
    }
}

let userInfo = IncredibandOnboard(instrument: "?", location: 0, skillLevel: "?", userName: "?", profileID: "?")

class TestDataSource : NSObject {
    override init() {
        super.init()
    }
}