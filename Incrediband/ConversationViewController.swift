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
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell : UITableViewCell! = tableView .dequeueReusableCellWithIdentifier("conversationCell", forIndexPath: indexPath) as UITableViewCell
        
        
        
        if let conversationCell = cell as? ConversationTableViewCell {
            if let label = conversationCell.userConversation {
                label.text = "Ajay"
            }
            if let label = conversationCell.matchConversation {
                label.text = "Beginner"
            }
            return conversationCell
        }
        
        return cell
    }
    
}

class ConversationTableViewCell: UIKit.UITableViewCell {
    @IBOutlet var userConversation : UILabel!
    @IBOutlet var matchConversation : UILabel!
    @IBOutlet var matchProfilePicture: UIImageView!
    @IBOutlet var userProfilePicture: UIImageView!
}