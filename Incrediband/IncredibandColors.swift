//
//  IncredibandColors.swift
//  Incrediband
//
//  Created by brian griffey on 10/23/14.
//  Copyright (c) 2014 Incrediband, Inc. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func colorGreen() -> UIColor {
        return UIColor(rgba: "#c3da56")
    }
    
    class func colorOrange() -> UIColor {
        return UIColor(rgba: "#f7b100")
    }
    
    class func colorBlue() -> UIColor {
        return UIColor(rgba: "#5bbdcc")
    }
    
    class func colorBackground() -> UIColor{
        return UIColor(rgba: "#e6e3d3")
    }
    
    class func colorLightText() -> UIColor {
        return UIColor(rgba: "#999999")
    }
    
    class func colorDarkText() -> UIColor {
        return UIColor.blackColor()
    }
    
    class func colorDarkButtonText() -> UIColor {
        return UIColor.whiteColor()
    }
    
    convenience init(rgba: String) {
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0
        
        if rgba.hasPrefix("#") {
            let index   = advance(rgba.startIndex, 1)
            let hex     = rgba.substringFromIndex(index)
            let scanner = NSScanner(string: hex)
            var hexValue: CUnsignedLongLong = 0
            if scanner.scanHexLongLong(&hexValue) {
                if countElements(hex) == 6 {
                    red   = CGFloat((hexValue & 0xFF0000) >> 16) / 255.0
                    green = CGFloat((hexValue & 0x00FF00) >> 8)  / 255.0
                    blue  = CGFloat(hexValue & 0x0000FF) / 255.0
                } else if countElements(hex) == 8 {
                    red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                    green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                    blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                    alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
                } else {
                    print("invalid rgb string, length should be 7 or 9")
                }
            } else {
                println("scan hex error")
            }
        } else {
            print("invalid rgb string, missing '#' as prefix")
        }
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
}
