//
//  collectionViewextenson.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 09.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import Foundation
import UIKit


extension FacebookCollectionViewController {
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return listOfPosts.count
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
  let feedCell = collectionView.dequeueReusableCell(withReuseIdentifier: newsCell, for: indexPath) as? FacebookFeedCVCell
    
    let post = listOfPosts[indexPath.row]
    
    feedCell?.dateAndLocationLabel = PostLabel(user: post.userName)
    feedCell?.messageLabel = PostMessage(message: post.postMessage)
    feedCell?.profileImageView = PostImages(image: post.userImage, mask: true)
    feedCell?.postImageView = PostImages(image: post.postImage, mask: true)
    feedCell?.likesComentsLabel = CommentsLine(likesCount: post.likesCount, commentsCount: post.commentsCount)
    
    feedCell?.setupViews()
    
    return feedCell!
}
  
}



extension FacebookCollectionViewController: UICollectionViewDelegateFlowLayout {


  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
 
    return CGSize(view.frame.width, 400)
  
  
  
  }
  

  
  
 }







