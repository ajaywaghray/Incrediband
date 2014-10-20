//
//  ResultsViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/18/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation
import UIKit

class ResultsViewController: UIKit.UIViewController, UITableViewDataSource, UITableViewDelegate {
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
    
        
        var cell : UITableViewCell! = tableView .dequeueReusableCellWithIdentifier("usersCell", forIndexPath: indexPath) as UITableViewCell
        
        
        let index = indexPath.indexAtPosition(1)
        if index == 0 {
            if let usersCell = cell as? ResultsTableViewCell {
                if let label = usersCell.userResultName {
                    label.text = "Ajay"
                }
                if let label = usersCell.userResultSkillLevel {
                    label.text = "Beginner"
                }
                if let image = usersCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = usersCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return usersCell
            }
        }else if index == 1 {
            if let usersCell = cell as? ResultsTableViewCell {
                if let label = usersCell.userResultName {
                    label.text = "Jason"
                }
                if let label = usersCell.userResultSkillLevel {
                    label.text = "Expert"
                }
                if let image = usersCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = usersCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return usersCell
            }
        }else if index == 2 {
            if let usersCell = cell as? ResultsTableViewCell {
                if let label = usersCell.userResultName {
                    label.text = "Brittany"
                }
                if let label = usersCell.userResultSkillLevel {
                    label.text = "Intermediate"
                }
                if let image = usersCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = usersCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return usersCell
            }
        }else if index == 3 {
            if let usersCell = cell as? ResultsTableViewCell {
                if let label = usersCell.userResultName {
                    label.text = "William"
                }
                if let label = usersCell.userResultSkillLevel {
                    label.text = "Expert"
                }
                if let image = usersCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = usersCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return usersCell
            }
        }else if index == 4 {
            if let usersCell = cell as? ResultsTableViewCell {
                if let label = usersCell.userResultName {
                    label.text = "Nikul"
                }
                if let label = usersCell.userResultSkillLevel {
                    label.text = "Intermediate"
                }
                if let image = usersCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = usersCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return usersCell
            }
        }else{
            if let usersCell = cell as? ResultsTableViewCell {
                if let label = usersCell.userResultName {
                    label.text = "Ajay"
                }
                if let label = usersCell.userResultSkillLevel {
                    label.text = "Beginner"
                }
                if let image = usersCell.userResultInstument {
                    image.image = UIImage(named: "rightsideimage")
                }
                if let image = usersCell.userResultProfilePicture {
                    image.image = UIImage(named: "myself")
                }
                return usersCell
            }
        }
        
        return cell
    }
    
}

class ResultsTableViewCell: UIKit.UITableViewCell {
    @IBOutlet var userResultName : UILabel!
    @IBOutlet var userResultSkillLevel : UILabel!
    @IBOutlet var userResultProfilePicture: UIImageView!
    @IBOutlet var userResultInstument: UIImageView!
}

