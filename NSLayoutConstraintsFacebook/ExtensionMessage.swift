//
//  PostMessage.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 13.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

extension UITextView {
  
  func resetNew(userMessage message: String) {
    
    self.text = message
    
    self.font = UIFont.systemFont(ofSize: 14)
    
    self.isScrollEnabled = false
    
  }
  
  
  
}
