//
//  CommentsLine.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 13.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

extension UILabel {
  
  func resetNew(comments: Int,likes: Int) {
    
    self.text = "\(likes) Likes     \(comments.SIPresentation()) Comments"
    
    self.font = UIFont.systemFont(ofSize: 12)
    
    self.textColor = UIColor.rgb(red: 155, green: 161, blue: 171)
  }
  
  
}

extension Int {
  
  func SIPresentation () -> String{
    
    if (self > 1000){
      return "\(self/1000).\((self/100)%10)K"
    } else {
      return String(self)
    }
  }
  
}
