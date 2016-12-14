//
//  Post.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 14.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class Post: NSObject {
  
  var userName: String
  
  var userImage: UIImage
  
  var postMessage: String

  var postImage: UIImage
  
  var likesCount: Int

  var commentsCount: Int
 
  
  init(user: String,
       andUserImage: UIImage,
       postMessage: String,
       postImage: UIImage,
       likes: Int,
       comments:Int){
    
    userName = user;
    userImage = andUserImage
    self.postMessage = postMessage
    self.postImage = postImage
    likesCount = likes
    commentsCount = comments
    
  }
  
  
  override var description: String {
    return "name:  + \(userName)\n" +
           "post message + \(postMessage)\n" +
           "lieks and comments + \(likesCount,commentsCount)\n"
    
  }
}



