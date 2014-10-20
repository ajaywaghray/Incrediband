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
    }
}

class NewMessageTableViewCell: UIKit.UITableViewCell {
    @IBOutlet var userNewMessage : UILabel!
    @IBOutlet var userProfilePicture: UIImageView!
}