//
//  WherePlayViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/4/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit
import CoreLocation
//import foundation

class WherePlayViewController: UIViewController {
    
    @IBOutlet var zipCode : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //locationManager = CLLocationManager()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    //Checks for completed input, changes input to a number, then adds number to the user's location in the model
    @IBAction func UITextFieldTextDidChangeNotification(sender: AnyObject){
        let a:Int? = zipCode.text.toInt()
        userInfo.location = a!
    }
    
}