//
//  FacebookFeedCVCell.swift
//  NSLayoutConstraintsFacebook
//
//  Created by Nik on 09.12.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class FacebookFeedCVCell: UICollectionViewCell {
  
  // хотя в принципе вместо отдельного файла мы можем
  // определеить элементы вью в клоужерах
  
  
  
  var dateAndLocationLabel:UILabel?
  
  var profileImageView : PostImages?
  
 // let statusMessage: String
  
  var messageLabel: UITextView?
  
  var postImageView: PostImages?
  
  var likesComentsLabel: CommentsLine?
  
  let deviderLineView: UIView = {
    
    let line = UIView()
    
    line.backgroundColor = UIColor.rgb(red: 226, green: 238, blue: 232)
    
    return line
    
  }()
  
  
   override init(frame: CGRect) {
    super.init(frame:frame)
 //   setupViews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  
  
  
  // buttons smells
  let likeButton = FacebookFeedCVCell.buttonFor(title: "Like!", andImage: "like")
  
  let commentButton = FacebookFeedCVCell.buttonFor(title: "Comment", andImage: "comment")
  
  let shareButton = FacebookFeedCVCell.buttonFor(title: "Share", andImage: "share")
  
  static func buttonFor(title: String, andImage image: String) -> UIButton {
    
    let button = UIButton()
    
    button.setTitle(title, for: .normal)
    button.setTitleColor(UIColor.rgb(red: 143, green: 150, blue: 145),for: .normal)
    button.titleLabel?.textAlignment = .left
    button.setImage(UIImage(named:image), for: .normal)
    button.imageView?.backgroundColor = UIColor.white
    button.imageView?.contentMode = .scaleAspectFit
    // smells
    button.imageEdgeInsets = UIEdgeInsetsMake(12,-12,12,24)
    
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
  
    return button
  }
  
  
  
  
  
  
  
  init(frame: CGRect, post: Post) {
    
    
    
    messageLabel = PostMessage(message: post.postMessage)
    
    dateAndLocationLabel = PostLabel(user: post.userName)
    
    profileImageView = PostImages(image: post.userImage ,mask:false)
    
    postImageView = PostImages(image: post.postImage, mask: true)
    
    likesComentsLabel = CommentsLine(likesCount: post.likesCount, commentsCount: post.commentsCount)
    
    
    
    super.init(frame:frame)
   // setupViews()
  }
  
  public func setupViews(){
    
    backgroundColor = UIColor.white
    
    addSubview(dateAndLocationLabel!)
    addSubview(profileImageView!)
    addSubview(messageLabel!)
    addSubview(postImageView!)
    addSubview(likesComentsLabel!)
    addSubview(deviderLineView)
    
    addSubview(likeButton)
    addSubview(shareButton)
    addSubview(commentButton)
    
//    likeButton.backgroundColor = UIColor.yellow
//    shareButton.backgroundColor = UIColor.blue
//    commentButton.backgroundColor = UIColor.cyan
    
    
    addContstraints(withVisualFormat: "H:|-8-[v0(44)]-8-[v1]|", views: profileImageView!,dateAndLocationLabel!)
    addContstraints(withVisualFormat: "H:|-4-[v0]-4-|", views: messageLabel!)
    addContstraints(withVisualFormat: "H:|[v0]|", views: postImageView!)
    addContstraints(withVisualFormat: "H:|-12-[v0]", views: likesComentsLabel!)
    addContstraints(withVisualFormat: "H:|-8-[v0]-8-|", views: deviderLineView)
    
    addContstraints(withVisualFormat: "H:|[v0(v2)][v1(v2)][v2]|", views: likeButton,commentButton,shareButton)
    
    addContstraints(withVisualFormat: "V:|-12-[v0]", views: dateAndLocationLabel!)
    addContstraints(withVisualFormat: "V:|-8-[v0(44)]-4-[v1(24)]-[v2]-4-[v3(24)]-4-[v4(0.4)][v5(50)]|", views: profileImageView!, messageLabel!,postImageView!,likesComentsLabel!,deviderLineView,likeButton)
    addContstraints(withVisualFormat: "V:[v0(50)]|", views: commentButton)
    addContstraints(withVisualFormat: "V:[v0(50)]|", views: shareButton)
  }
  
}


// adding extension to UIView



extension UIView {
  func addContstraints(withVisualFormat format: String, views: UIView...) {
    
    var viewsDict = [String: UIView]()
    
    for (index,view) in views.enumerated() {
      
      let key = "v\(index)"
      
      view.translatesAutoresizingMaskIntoConstraints = false
      viewsDict[key] = view
    }
    
    
    addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
    
    
  }
  
  
  
}








