//
//  CommentsLine.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 13.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class CommentsLine: UILabel {
  
  
  
  init(likesCount: Int, commentsCount: Int ) {
    
    super.init(frame: CGRect())
    
    super.text = "\(likesCount) Likes     \(commentsCount.SIPresentation()) Comments"
    
    super.font = UIFont.systemFont(ofSize: 12)
    
    super.textColor = UIColor.rgb(red: 155, green: 161, blue: 171)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
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
