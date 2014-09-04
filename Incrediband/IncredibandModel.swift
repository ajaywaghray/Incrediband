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
    var location: Double
    var skillLevel: String
    
    // Initializing variables in the onboarding class like a boss.
    init(instrument:String, location:Double, skillLevel:String) {
        self.instrument = instrument
        self.location = location
        self.skillLevel = skillLevel
    }
}

let userOnboard = IncredibandOnboard(instrument: "?", location: 0, skillLevel: "?")
