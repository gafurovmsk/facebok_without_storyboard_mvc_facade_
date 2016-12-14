//
//  UIColorExtenstion.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 13.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

//import Foundation
import UIKit

extension UIColor {
  
  static func rgb(red: CGFloat, green: CGFloat,blue: CGFloat) -> UIColor{
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
  }
  
}
