//
//  SkillLevelViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/6/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

class SkillLevelViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This uploads all the data in the model to Parse
    @IBAction func UploadModel(sender: AnyObject){
        userOnboard.skillLevel = "Beginner"
        var userUpload = PFObject(className: "User")
        userUpload.setObject(userOnboard.instrument, forKey: "Instrument")
        userUpload.setObject(userOnboard.location, forKey: "Location")
        userUpload.setObject(userOnboard.skillLevel, forKey: "Skill Level")
        
        // Can't get uploading to work! Commented out until I can sort this out. -AW
        
        //userUpload.saveInBackgroundWithBlock {
            //(success: Bool!, error: NSError!) -> Void in
            //if (success != nil) {
                //NSLog("Object created with id: \(userUpload.objectId)")
            //} else {
                //NSLog("%@", error)
            //}
        //}
    }
    
    
}
