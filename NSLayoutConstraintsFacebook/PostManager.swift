//
//  PostManager.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 13.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class PostManager: NSObject {
  
  private var posts = [Post]()
  
  override init() {
    
    // defining Posts. couldbe parsed or any other type of def
    // possibly downloaded by httpclient
    
    let post0 = Post(user: "Mark Zuckerberg",
                     andUserImage: UIImage(named:"zuckerberg")!,
                     postMessage: "meanwhile someone get his sunbath! Cool",
                     postImage: UIImage(named:"beach_girl")!,
                     likes: 135,
                     comments: 695)
    
    let post1 = Post(user: "Steve Jobs",
                     andUserImage: UIImage(named:"zuckerberg")!,
                     postMessage: "some cool steve jobs quote!! ",
                     postImage: UIImage(named:"mountain")!,
                     likes: 3332,
                     comments: 6195)
    
    let post2 = Post(user: "Mark Zuckerberg",
                     andUserImage: UIImage(named:"zuckerberg")!,
                     postMessage: "meanwhile someone get his sunbath! Cool",
                     postImage: UIImage(named:"beach_girl")!,
                     likes: 4123,
                     comments: 1299)
    
    
    let post3 = Post(user: "Steve Jobs",
                     andUserImage: UIImage(named:"zuckerberg")!,
                     postMessage: "another wisdom steve jobs quote!! ",
                     postImage: UIImage(named:"mountain")!,
                     likes: 3332,
                     comments: 6195)
    
    
    
    posts = [post0,post1,post2,post3]
  }
  
  func getPosts() -> [Post] {
    return posts
  }
  
  func add(post: Post, at index: Int) {
    if (posts.count >= index) {
      posts.insert(post, at: index)
    } else {
      posts.append(post)
    }
  }
  
  func delete(at index: Int) {
    posts.remove(at: index)
  }
  

  
  
  
  
}
