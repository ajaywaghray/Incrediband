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
        matchConversation.resignFirstResponder()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var identifier: NSString = "Cell1"
        //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
        
        var cell : UITableViewCell! = tableView .dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as UITableViewCell
        
        
        
        if let Cell1 = cell as? UserConversationTableViewCell {
            if let label = Cell1.userConversation {
                label.text = "What's up man? Wanna make some music on Tuesday?"
            }
            return Cell1
        }
        
        if let Cell2 = cell as? MatchConversationTableViewCell {
            if let label = Cell2.matchConversation {
                label.text = "Hey! Can't make it Tuesday, but how about Sunday?"
            }
            return Cell2
        }
        
        return cell
    }
    
}

class UserConversationTableViewCell: UIKit.UITableViewCell {
    @IBOutlet var userConversation : UILabel!
    @IBOutlet var userProfilePicture: UIImageView!
}

class MatchConversationTableViewCell: UIKit.UITableViewCell {
    @IBOutlet var matchConversation : UILabel!
    @IBOutlet var matchProfilePicture: UIImageView!
}