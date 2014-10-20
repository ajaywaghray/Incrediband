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
        
        
        let index = indexPath.indexAtPosition(1)
        if index == 0 {
            if let inboxCell = cell as? InboxTableViewCell {
                if let label = inboxCell.userResultName {
                    label.text = "Ajay"
                }
                if let label = inboxCell.userResultSkillLevel {
                    label.text = "Beginner"
                }
                if let image = inboxCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = inboxCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return inboxCell
            }
        }else if index == 1{
            if let inboxCell = cell as? InboxTableViewCell {
                if let label = inboxCell.userResultName {
                    label.text = "Casey"
                }
                if let label = inboxCell.userResultSkillLevel {
                    label.text = "Expert"
                }
                if let image = inboxCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = inboxCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return inboxCell
            }
        }else if index == 2{
            if let inboxCell = cell as? InboxTableViewCell {
                if let label = inboxCell.userResultName {
                    label.text = "Adam"
                }
                if let label = inboxCell.userResultSkillLevel {
                    label.text = "Intermediate"
                }
                if let image = inboxCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = inboxCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return inboxCell
            }
        }else if index == 3{
            if let inboxCell = cell as? InboxTableViewCell {
                if let label = inboxCell.userResultName {
                    label.text = "Mukul"
                }
                if let label = inboxCell.userResultSkillLevel {
                    label.text = "Expert"
                }
                if let image = inboxCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = inboxCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return inboxCell
            }
        }else if index == 4{
            if let inboxCell = cell as? InboxTableViewCell {
                if let label = inboxCell.userResultName {
                    label.text = "Brian"
                }
                if let label = inboxCell.userResultSkillLevel {
                    label.text = "Intermediate"
                }
                if let image = inboxCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = inboxCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return inboxCell
            }
        }else{
            if let inboxCell = cell as? InboxTableViewCell {
                if let label = inboxCell.userResultName {
                    label.text = "Ajay"
                }
                if let label = inboxCell.userResultSkillLevel {
                    label.text = "Beginner"
                }
                if let image = inboxCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = inboxCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return inboxCell
            }
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

