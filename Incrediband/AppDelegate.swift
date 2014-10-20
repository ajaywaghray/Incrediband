//
//  AppDelegate.swift
//  Incrediband
//
//  Created by Ajay Waghray on 8/29/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit;

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
    // Override point for customization after application launch.
    
    FBLoginView.self
    FBProfilePictureView.self
        
    Parse.setApplicationId("oIb9FeVPJatHVobtNop1ro3bO7RLL2ofdcXlOQyY",  clientKey:"yBvFHS14Wkh3DnmadOmLf5PvlB2dDIf6CEO5EvdS")
        
    PFUser.enableAutomaticUser()
        
    var defaultACL = PFACL.ACL()
        
    // If you would like all objects to be private by default, remove this line.
    defaultACL.setPublicReadAccess(true)
    PFACL.setDefaultACL(defaultACL, withAccessForCurrentUser: true)
    
    return true
    }
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: NSString?, annotation: AnyObject) -> Bool {
    
        return FBAppCall.handleOpenURL(url, sourceApplication: sourceApplication)
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        FBAppCall.handleDidBecomeActive()
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
}