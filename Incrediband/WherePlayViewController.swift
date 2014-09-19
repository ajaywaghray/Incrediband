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

class WherePlayViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var zipCode : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //locationManager = CLLocationManager()
        zipCode.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    //Checks for completed input, changes input to a number, then adds number to the user's location in the model
    func textFieldShouldReturn(sender: AnyObject) -> Bool {
        zipCode.resignFirstResponder()
        let a:Int? = zipCode.text.toInt()
        userInfo.location = a!
        return true
    }
    
}