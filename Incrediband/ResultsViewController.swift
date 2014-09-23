//
//  ResultsViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/18/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import Foundation
import UIKit

class ResultsViewController: UIKit.UIViewController, UITableViewDataSource{
    @IBOutlet var userResultName : UILabel!
    @IBOutlet var userResultSkillLevel : UILabel!
    @IBOutlet var userResultProfilePicture: UIImageView!
    @IBOutlet var userResultInstument: UIImageView!

    var possibleTips = Dictionary<Int, (tipAmt:Double, total:Double)>()
    var sortedKeys:[Int] = []
    
    func refreshUI() {
        userResultName.text = String(userInfo.userName)
        userResultSkillLevel.text = String(userInfo.skillLevel)
        //userResultProfilePicture. = 0
        if(userInfo.instrument == "Guitar"){
            //userResultInstument.image = 0
        }
        if(userInfo.instrument == "Bass"){
            //userResultInstument.data = 0
        }
        if(userInfo.instrument == "Bass"){
            //userResultInstument.data = 0
        }
        if(userInfo.instrument == "Bass"){
            //userResultInstument.data = 0
        }
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
        return sortedKeys.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel?.text = String(userInfo.userName)
        cell.detailTextLabel?.text = String(format:"Tip: $%0.2f, Total: $%0.2f", tipAmt, total)
        return cell
    }
    
}

