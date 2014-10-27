//
//  DarkLabel.swift
//  Incrediband
//
//  Created by brian griffey on 10/25/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

class DarkLabel : StyleableLabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textColor = UIColor.colorDarkText()
        self.font = self.font.fontWithSize(self.pointSize)
    }
    
    required override init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.textColor = UIColor.colorDarkText()
        self.font = self.font.fontWithSize(self.pointSize)
    }
    
    
}
