//
//  ConversationViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 10/11/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation
import UIKit

class ConversationViewController: UIKit.UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var userConversation : UILabel!
    @IBOutlet var matchConversation : UILabel!
    @IBOutlet var matchProfilePicture: UIImageView!
    @IBOutlet var userProfilePicture: UIImageView!
    @IBOutlet var conversationTable: UITableView!
    
    func refreshUI() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        userConversation.resignFirstResponder()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let index = indexPath.indexAtPosition(1)
        if index % 2 == 1 {
            var cell = tableView.dequeueReusableCellWithIdentifier("Cell1") as UserConversationTableViewCell
            //cell.label.text = "Label \(indexPath.indexAtPosition(1))"
            if let label = cell.userConversation {
                label.text = "Hey! Can't make it Tuesday, but how about Sunday?"
            }
            if let image = cell.userProfilePicture{
                image.image = UIImage(named: "drumsBackground")
            }
            return cell
        } else{
            var cell = tableView.dequeueReusableCellWithIdentifier("Cell1") as UserConversationTableViewCell
            if let label = cell.userConversation {
                label.text = "What's up man? Wanna make some music on Tuesday?"
            }
            
            if let image = cell.userProfilePicture{
                image.image = UIImage(named: "guitarBackground")
            }
            return cell
        }
        
    }
}

class UserConversationTableViewCell: UIKit.UITableViewCell {
    @IBOutlet var userConversation : UILabel!
    @IBOutlet var userProfilePicture: UIImageView!
    @IBOutlet var matchConversation : UILabel!
    @IBOutlet var matchProfilePicture: UIImageView!
}