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

  let dateAndLocationLabel:UILabel
  
  let profileImageView : PostImages
  
  let statusMessage: String
  
  let messageLabel: UITextView
  
  let postImageView: PostImages
  
  let likesComentsLabel: CommentsLine
  
  let deviderLineView: UIView = {
    
    let line = UIView()
    
    line.backgroundColor = UIColor.rgb(red: 226, green: 238, blue: 232)
    
    return line
    
  }()
  
  
  
  
  
  override init(frame: CGRect) {
    
    statusMessage = "meanwhile someone sunning on the beach! Cool"
    
    messageLabel = PostMessage(message: statusMessage)
    
    dateAndLocationLabel = PostLabel()
    
    profileImageView = PostImages(image: "zuckerberg",mask:false)
    
    postImageView = PostImages(image: "beach_girl", mask: true)
    
    likesComentsLabel = CommentsLine(likesCount: 488, commentsCount: 1239)
    
    
    
    
    super.init(frame: frame)
    setupViews()
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
    
   // button.backgroundColor = UIColor.yellow
    
    return button
  }
  
  
  func setupViews(){
    
    backgroundColor = UIColor.white
    
    addSubview(dateAndLocationLabel)
    addSubview(profileImageView)
    addSubview(messageLabel)
    addSubview(postImageView)
    addSubview(likesComentsLabel)
    addSubview(deviderLineView)
    
    addSubview(likeButton)
    addSubview(shareButton)
    addSubview(commentButton)
    
    likeButton.backgroundColor = UIColor.yellow
    shareButton.backgroundColor = UIColor.blue
    commentButton.backgroundColor = UIColor.cyan
    
    
    addContstraints(withVisualFormat: "H:|-8-[v0(44)]-8-[v1]|", views: profileImageView,dateAndLocationLabel)
    addContstraints(withVisualFormat: "H:|-4-[v0]-4-|", views: messageLabel)
    addContstraints(withVisualFormat: "H:|[v0]|", views: postImageView)
    addContstraints(withVisualFormat: "H:|-12-[v0]", views: likesComentsLabel)
    addContstraints(withVisualFormat: "H:|-8-[v0]-8-|", views: deviderLineView)
    
    addContstraints(withVisualFormat: "H:|[v0(v2)][v1(v2)][v2]|", views: likeButton,commentButton,shareButton)
    
    addContstraints(withVisualFormat: "V:|-12-[v0]", views: dateAndLocationLabel)
    addContstraints(withVisualFormat: "V:|-8-[v0(44)]-4-[v1(24)]-[v2]-4-[v3(24)]-4-[v4(0.4)][v5(50)]|", views: profileImageView, messageLabel,postImageView,likesComentsLabel,deviderLineView,likeButton)
    //addContstraints(withVisualFormat: "V:[v0]|", views: likeButton)
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











//{
//  
//  let label = UILabel()
//  
//  label.numberOfLines = 2
//  
//  let attributedText = NSMutableAttributedString(string: "Mark Zuckerberg", attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14)])
//  
//  attributedText.append(NSAttributedString(string: "\nDecember 18  •  San Francisco  •  ", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 12), NSForegroundColorAttributeName: UIColor.rgb(red:155, green: 161, blue: 171)]))
//  // здесь мы вставляем изображение в строку
//  
//  let attachment = NSTextAttachment()
//  attachment.image = UIImage(named: "globe")
//  attachment.bounds = CGRect(0,-2,12,12)
//  
//  attributedText.append(NSAttributedString(attachment: attachment))
//  
//  label.attributedText = attributedText
//  
//  
//  
//  return label
//  
//}()
//


//let profileImageView: UIImageView = {
//  let willLoadImage = UIImageView()
//  willLoadImage.image = UIImage(named: "zuckerberg")
//  willLoadImage.contentMode = .scaleAspectFit
//  
//  // это строчка для проверки видимости вью
//  //willLoadImage.backgroundColor = UIColor.red
//  
//  // willLoadImage.translatesAutoresizingMaskIntoConstraints = false
//  
//  
//  
//  return willLoadImage
//  
//}()

//let postImageView: UIImageView = {
//  let imageView = UIImageView()
//  
//  imageView.image = UIImage(named: "beach_girl")
//  
//  imageView.contentMode = .scaleAspectFill
//  imageView.layer.masksToBounds = true
//  
//  return imageView
//}()


//let messageLabel: UITextView = {
//  
//  let textView = UITextView()
//  
//  textView.text = "meanwhile someone get his sunbath! Cool"
//  
//  textView.font = UIFont.systemFont(ofSize: 14)
//  
//  textView.isScrollEnabled = false
//  
//  return textView
//  
//}()
//
//let likesComentsLabel: UILabel = {
//  
//  let label = UILabel()
//  
//  label.text = "488 Likes     10.7K Comments"
//  
//  label.font = UIFont.systemFont(ofSize: 12)
//  
//  label.textColor = UIColor.rgb(red: 155, green: 161, blue: 171)
//  
//  return label
//}()













