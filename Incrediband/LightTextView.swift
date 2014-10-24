//
//  LightTextView.swift
//  Incrediband
//
//  Created by brian griffey on 10/23/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

@IBDesignable
class LightTextView: UITextView {
    
    @IBInspectable
    var pointSize: CGFloat = 18 {
        didSet(theSize) {
            self.font = self.font.fontWithSize(theSize)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textColor = UIColor.colorLightText()
        self.font = self.font.fontWithSize(self.pointSize)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.textColor = UIColor.colorLightText()
        self.font = self.font.fontWithSize(self.pointSize)
    }

}
