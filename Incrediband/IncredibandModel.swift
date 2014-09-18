//
//  IncredibandModel.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/1/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation

// Here is the class used to hold info when the user is onboarding into Incrediband
class IncredibandOnboard {

    var instrument: String
    var location: Int
    var skillLevel: String
    var userName: String
    
    // Initializing variables in the onboarding class like a boss.
    init(instrument:String, location:Int, skillLevel:String, userName:String) {
        self.instrument = instrument
        self.location = location
        self.skillLevel = skillLevel
        self.userName = userName
    }
}

let userInfo = IncredibandOnboard(instrument: "?", location: 0, skillLevel: "?", userName: "?")
