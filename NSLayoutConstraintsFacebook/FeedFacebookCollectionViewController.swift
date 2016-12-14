//
//  FeedFacebookCollectionViewController.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 09.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class FeedFacebookCollectionViewController: UICollectionViewController {
  
  let newsCell = "newsCell"
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "Faceebook Feed"
    
    //self.navigationController?.navigationBar.isTranslucent = false
    
    collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
    
    collectionView?.register(FacebookNewsCollectionViewCell.self, forCellWithReuseIdentifier: newsCell)
    
    collectionView?.alwaysBounceVertical = true
    
    
  }
  
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
    collectionView?.collectionViewLayout.invalidateLayout()
    
  }
  
  
  
}

