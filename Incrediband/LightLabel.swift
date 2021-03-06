//
//  LightLabel.swift
//  Incrediband
//
//  Created by brian griffey on 10/23/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

class LightLabel : StyleableLabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textColor = UIColor.colorLightText()
        self.font = self.font.fontWithSize(self.pointSize)
    }
    
    required override init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.textColor = UIColor.colorLightText()
        self.font = self.font.fontWithSize(self.pointSize)
    }
    
    
}
