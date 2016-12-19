//
//  PostImages.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 13.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit


extension UIImageView {
  
  
  func resetNew(userImage image: UIImage) {
    
    self.image = image
    self.contentMode = .scaleAspectFill
    self.layer.masksToBounds = true
    
  }
  
  
}
