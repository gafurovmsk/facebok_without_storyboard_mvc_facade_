//
//  PostImages.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 13.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class PostImages: UIImageView {
  
  init(image:UIImage,mask: Bool){
    
    super.init(frame: CGRect())
    

    super.image = image
    super.contentMode = .scaleAspectFill
    super.layer.masksToBounds = mask
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  }
