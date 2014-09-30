//
//  InboxViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/29/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation
import UIKit

class InboxViewController: UIKit.UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var userResultName : UILabel!
    @IBOutlet var userResultSkillLevel : UILabel!
    @IBOutlet var userResultProfilePicture: UIImageView!
    @IBOutlet var userResultInstument: UIImageView!
    @IBOutlet var usersTable: UITableView!
    
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
        userResultName.resignFirstResponder()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell : UITableViewCell! = tableView .dequeueReusableCellWithIdentifier("inboxCell", forIndexPath: indexPath) as UITableViewCell
        
        
        
        if let inboxCell = cell as? InboxTableViewCell {
            if let label = inboxCell.userResultName {
                label.text = "Ajay"
            }
            if let label = inboxCell.userResultSkillLevel {
                label.text = "Beginner"
            }
            return inboxCell
        }
        
        return cell
    }
    
}

class InboxTableViewCell: UIKit.UITableViewCell {
    @IBOutlet var userResultName : UILabel!
    @IBOutlet var userResultSkillLevel : UILabel!
    @IBOutlet var userResultProfilePicture: UIImageView!
    @IBOutlet var userResultInstument: UIImageView!
}

