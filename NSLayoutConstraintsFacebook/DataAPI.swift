//
//  DataAPI.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 14.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

// here we dont care about httpclient or data model and just use API to download data
//

class DataAPI: NSObject {
  private let postManager: PostManager
  private let httpClient: HTTPClient
  private let isOnline: Bool
  
  class var sharedInstance: DataAPI {
   
    struct Singleton {
        static let instance = DataAPI()
    }
      return Singleton.instance
  }
  
  override init() {
    postManager = PostManager()
    httpClient = HTTPClient()
    isOnline = false
    
    super.init()
  }
  
  func getPosts() -> [Post] {
    return postManager.getPosts()
  }
  
  func addPost(post: Post, index: Int) {
    postManager.add(post: post, at: index)
    if isOnline {
      
      let someURL = "/api/addPost"
      
      httpClient.post(requestOf: someURL , body: post.description)
    }
  }
  
  func deletePost(index: Int) {
    postManager.delete(at: index)
    if isOnline {
      
      let someURL = "/api/deletePost"
      
      httpClient.post(requestOf: someURL, body: "\(index)")
    }
  }
  
}
