//
//  UIColor+Extension.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 26/01/2021.
//

import UIKit

extension UIColor {
   class var primaryColor: UIColor {
        guard let color = UIColor(named: "PrimaryColor") else {
            return UIColor()
        }
        return color
    }
    
    class var secondryColor: UIColor {
         guard let color = UIColor(named: "SecondryColor") else {
             return UIColor()
         }
         return color
     }
    
    class var titleTextColor: UIColor {
         guard let color = UIColor(named: "TitleTextColor") else {
             return UIColor()
         }
         return color
     }
    
    class var rectangleColor: UIColor {
         guard let color = UIColor(named: "RectangleColor") else {
             return UIColor()
         }
         return color
     }
   
    class var screenleColor: UIColor {
         guard let color = UIColor(named: "ScreenColor") else {
             return UIColor()
         }
         return color
     }
    
    class var shadowColor: UIColor {
         guard let color = UIColor(named: "ShadowColor") else {
             return UIColor()
         }
         return color
     }
}
