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
    
    
    // лучше здесь передавать только одну ссылку на объект Post для ячейки
    // тогда  в didSet можно установить все эти объекты ниже
    
    feedCell?.feedingPost = listOfPosts[indexPath.row]
  
    
    // Leaking the mommory  :[
   // feedCell?.setupViews()
    
    return feedCell!
}
  
}



extension FacebookCollectionViewController: UICollectionViewDelegateFlowLayout {


  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
 
    return CGSize(view.frame.width, 400)
  
  
  
  }
  

  
  
 }







