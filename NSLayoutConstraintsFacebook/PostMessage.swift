//
//  PostMessage.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 13.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class PostMessage: UITextView {
  
  
  init(message: String) {
    
    super.init(frame: CGRect(), textContainer: nil)
    
    super.text = message
    
    super.font = UIFont.systemFont(ofSize: 14)
    
    super.isScrollEnabled = false
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
