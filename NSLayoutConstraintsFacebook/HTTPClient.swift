//
//  HTTPClient.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 14.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

// some kind of http api for downloading post stuff

class HTTPClient: NSObject {
  
  
  func get(requestOf url: String) -> (AnyObject) {
    return NSData()
  }
  
  func post(requestOf url: String, body: String) -> (AnyObject){
    return NSData()
  }
  
  func download(imageOf url: String) -> (UIImage) {
    let postUrl = URL(string: url)
    let data = NSData(contentsOf: postUrl!)
    let image = UIImage(data: data as! Data)
    return image!
  }
  
  
  
  
}
