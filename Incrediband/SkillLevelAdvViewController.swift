//
//  SkillLevelAdvViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 10/20/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation

class SkillLevelAdvViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This uploads all the data in the model to Parse when the user presses "Next"
    @IBAction func UploadModel(sender: AnyObject){
        
        //Hard-coding skill level here until controller is made. -AW
        userInfo.skillLevel = "Expert"
        
        var userUpload = PFUser.currentUser()
        userUpload["Instrument"] = userInfo.instrument
        userUpload["Location"] = userInfo.location
        userUpload["Skill"] = userInfo.skillLevel
        userUpload.saveInBackground()
        
    }
    
    
}