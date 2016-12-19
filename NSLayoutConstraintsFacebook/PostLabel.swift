//
//  PostLabel.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 12.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class PostLabel: UILabel {

  init() {
    
    super.init(frame: CGRect())
   
    super.numberOfLines = 2
  
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  func resetNew(userName user: String){
    
    let attributedText = NSMutableAttributedString(string: user, attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14)])
    
    attributedText.append(NSAttributedString(string: "\nDecember 18  •  San Francisco  •  ", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 12), NSForegroundColorAttributeName: UIColor.rgb(red:155, green: 161, blue: 171)]))
    // здесь мы вставляем изображение в строку
    
    let attachment = NSTextAttachment()
    attachment.image = UIImage(named: "globe")
    attachment.bounds = CGRect(0,-2,12,12)
    
    attributedText.append(NSAttributedString(attachment: attachment))
    
    super.attributedText = attributedText

    
    
  }
  
  
  
  
  
  
//var dateAndLocationLabel:UILabel = {
//    
//      let label = UILabel()
//
//label.numberOfLines = 2
//
//let attributedText = NSMutableAttributedString(string: "Mark Zuckerberg", attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14)])
//
//attributedText.append(NSAttributedString(string: "\nDecember 18  •  San Francisco  •  ", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 12), NSForegroundColorAttributeName: UIColor.rgb(red:155, green: 161, blue: 171)]))
//// здесь мы вставляем изображение в строку
//
//let attachment = NSTextAttachment()
//attachment.image = UIImage(named: "globe")
//attachment.bounds = CGRect(0,-2,12,12)
//
//attributedText.append(NSAttributedString(attachment: attachment))
//
//label.attributedText = attributedText
//
//return label
//
//  }()

}
