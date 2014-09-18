//
//  ProfileViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/17/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var profilePhoto : UIImageView!
    @IBOutlet var instrumentBackground : UIImageView!
    @IBOutlet var userName : UILabel!
    @IBOutlet var userSkill : UILabel!
    @IBOutlet var userInstrument : UILabel!
    @IBOutlet var userLocation : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userName.text = userInfo.userName
        userSkill.text = userInfo.skillLevel
        userInstrument.text = userInfo.instrument
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}