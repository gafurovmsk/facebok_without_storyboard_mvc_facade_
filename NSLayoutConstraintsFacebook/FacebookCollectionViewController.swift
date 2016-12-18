//
//  FacebookCollectionViewController.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 09.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class FacebookCollectionViewController: UICollectionViewController {
  
  var listOfPosts = [Post]()
  // could be a private, but extension in another file
  
  let newsCell = "newsCell"
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "Faceebook Feed"
    
    //self.navigationController?.navigationBar.isTranslucent = false
    
    collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
    
    collectionView?.register(FacebookFeedCVCell.self, forCellWithReuseIdentifier: newsCell)
    
    collectionView?.alwaysBounceVertical = true
    
    
    // getting posts
    listOfPosts = DataAPI.sharedInstance.getPosts()
    
    
  }
  
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
    collectionView?.collectionViewLayout.invalidateLayout()
    
  }
  
  
  
}

