//
//  collectionViewextenson.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 09.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import Foundation
import UIKit


extension FeedFacebookCollectionViewController {
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 4
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return collectionView.dequeueReusableCell(withReuseIdentifier: newsCell, for: indexPath)
  }
  
}



extension FeedFacebookCollectionViewController: UICollectionViewDelegateFlowLayout {


  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
 
    return CGSize(view.frame.width, 400)
  
  
  
  }
  

  
  
 }







