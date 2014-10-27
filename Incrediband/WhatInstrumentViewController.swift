//
//  WhatInstrumentViewController.swift
//  Incrediband
//
//  Created by Ajay Waghray on 9/2/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

class WhatInstrumentViewController: IncredbandViewConteroller {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Collects instrument type from the view and stores it in the model
    @IBAction func guitarSelected(sender: AnyObject){
        userInfo.instrument = "Guitar"
    }
    @IBAction func bassSelected(sender: AnyObject){
        userInfo.instrument = "Bass"
    }
    @IBAction func drumsSelected(sender: AnyObject){
        userInfo.instrument = "Drums"
    }
    @IBAction func vocalsSelected(sender: AnyObject){
        userInfo.instrument = "Vocals"
    }
    
    
}