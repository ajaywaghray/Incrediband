//
//  DarkButton.swift
//  Incrediband
//
//  Created by brian griffey on 10/25/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

class DarkButton : UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setBackgroundImage(UIImage(named: "bg_btn_dark"), forState: UIControlState.Normal)
        self.titleLabel?.textColor = UIColor.colorDarkButtonText()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setBackgroundImage(UIImage(named: "bg_btn_dark"), forState: UIControlState.Normal)
        self.titleLabel?.textColor = UIColor.colorDarkButtonText()
    }
}
