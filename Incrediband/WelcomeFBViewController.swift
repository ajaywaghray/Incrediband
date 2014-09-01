//
//  WelcomeFBViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/1/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

class WelcomeFBViewController: UIViewController, FBLoginViewDelegate {
    
    @IBOutlet var fbLoginView : FBLoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    self.fbLoginView.delegate = self
    self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]

    // Facebook Delegate Methods
    
    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
        println("User Logged In")
    }
    
    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser) {
        println("User: \(user)")
        println("User ID: \(user.objectID)")
        println("User Name: \(user.name)")
        var userEmail = user.objectForKey("email") as String
        println("User Email: \(userEmail)")
    }
    
    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
        println("User Logged Out")
    }
    
    func loginView(loginView : FBLoginView!, handleError:NSError) {
        println("Error: \(handleError.localizedDescription)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}