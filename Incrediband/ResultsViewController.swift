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

    var possibleTips = Dictionary<Int, (tipAmt:Double, total:Double)>()
    var sortedKeys:[Int] = []
    
    func refreshUI() {
        userResultName.text = "Ajay"
        userResultSkillLevel.text = "Beginner"
        //userResultProfilePicture. = 0
        if(userInfo.instrument == "Guitar"){
            //userResultInstument.image
        }
        if(userInfo.instrument == "Bass"){
            //userResultInstument.data = 0
        }
        if(userInfo.instrument == "Vocals"){
            //userResultInstument.data = 0
        }
        if(userInfo.instrument == "Drums"){
            //userResultInstument.data = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        userResultName.resignFirstResponder()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        
        var cell : UITableViewCell! = tableView .dequeueReusableCellWithIdentifier("usersCell", forIndexPath: indexPath) as UITableViewCell
        
        
        
        if let usersCell = cell as? ResultsTableViewCell {
            if let label = usersCell.userResultName {
                label.text = "Ajay"
            }
            if let label = usersCell.userResultSkillLevel {
                label.text = "Fucking noob"
            }
            return usersCell
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

