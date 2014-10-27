//
//  WelcomeFBViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/1/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

class WelcomeFBViewController: IncredbandViewConteroller, FBLoginViewDelegate {

    @IBAction func buttonPressed(sender: AnyObject){
        FBSession.openActiveSessionWithReadPermissions(["public_profile"], allowLoginUI: true, completionHandler: {(session, state, error) -> Void in
                self.sessionStateChanged(session, state: state, error: error)
            })
        
        FBRequestConnection.startForMeWithCompletionHandler({connection, result, error in
            if !(error != nil)
            {
                PFUser.currentUser().setObject(result.objectID as String, forKey: "fbId")
                PFUser.currentUser().saveInBackground()
                func loginViewFetchedUserInto(loginView : FBLoginView!, user: FBGraphUser) {
                    userInfo.profileID = user.objectID
                    userInfo.userName = user.name
                }
            }
            else
            {
                println("Error")
            }
        })
        
    }
    func sessionStateChanged(session:FBSession, state:FBSessionState, error:NSError?) {
        
    }
    
    func loginViewFetchedUserInto(loginView : FBLoginView!, user: FBGraphUser) {
        userInfo.profileID = user.objectID
        userInfo.userName = user.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextStoryboard() {
        self.performSegueWithIdentifier("next", sender: nil)
    }
    
}