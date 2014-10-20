//
//  WelcomeFBViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/1/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

class WelcomeFBViewController: UIViewController, FBLoginViewDelegate {

    @IBAction func buttonPressed(sender: AnyObject){
        //FBSession.openActiveSessionWithReadPermissions(["public_profile"], allowLoginUI: true, completionHandler: <#FBSessionStateHandler!##(FBSession!, FBSessionState, NSError!) -> Void#>)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}