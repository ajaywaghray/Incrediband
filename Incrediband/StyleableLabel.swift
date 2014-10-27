//
//  StyleableLabel.swift
//  Incrediband
//
//  Created by brian griffey on 10/25/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

@IBDesignable
class StyleableLabel : UILabel {
    @IBInspectable
    var pointSize: CGFloat = 18 {
        didSet(theSize) {
            self.font = self.font.fontWithSize(theSize)
        }
    }
}
