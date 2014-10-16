//
//  NewMessageViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 10/15/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation
import UIKit

class NewMessageViewController: UIKit.UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var userNewMessage: UILabel!
    @IBOutlet var userProfilePicture: UIImageView!
    @IBOutlet var newMessageTable: UITableView!
    
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
        userNewMessage.resignFirstResponder()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("NewMessageCell") as NewMessageTableViewCell
        if let label = cell.userNewMessage{
            label.text = "What's up man? Wanna make some music on Tuesday?"
        }
        
        if let image = cell.userProfilePicture{
            image.image = UIImage(named: "guitarBackground")
        }
        return cell
        
        //var identifier: NSString = "Cell1"
        //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
        
        //var cell : UITableViewCell! = tableView .dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as UITableViewCell
        
        
        
        /*if let Cell1 = cell as? UserConversationTableViewCell {
        if let label = Cell1.userConversation {
        label.text = "What's up man? Wanna make some music on Tuesday?"
        }
        
        if let image = Cell1.userProfilePicture{
        image.image = UIImage(named: "guitarBackground")
        }
        
        return Cell1
        }
        
        if let Cell2 = cell as? MatchConversationTableViewCell {
        if let label = Cell2.matchConversation {
        label.text = "Hey! Can't make it Tuesday, but how about Sunday?"
        }
        if let image = Cell2.matchProfilePicture{
        image.image = UIImage(named: "drumsBackground")
        }
        
        return Cell2
        }*/
        
        //return cell
    }
}

class NewMessageTableViewCell: UIKit.UITableViewCell {
    @IBOutlet var userNewMessage : UILabel!
    @IBOutlet var userProfilePicture: UIImageView!
}