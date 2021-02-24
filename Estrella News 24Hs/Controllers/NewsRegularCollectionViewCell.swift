//
//  NewsRegularCollectionViewCell.swift
//  Estrella News 24Hs
//
//  Created by Juan Moreno on 12/18/20.
//

import UIKit

class NewsRegularCollectionViewCell: UICollectionViewCell {
    
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 14)
        //        label.numberOfLines = 0
        //        label.backgroundColor = .lightGray
        textView.isScrollEnabled = false
        return textView
    }()
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = .blue
        iv.image = UIImage(named: "placerholder24")
        return iv
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
         backgroundColor = .yellow
        
        addSubview(profileImageView)
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            profileImageView.leftAnchor.constraint(equalTo: leftAnchor,constant: 4)
        
        ])

        profileImageView.layer.cornerRadius = 40 / 2
        
        addSubview(textView)
//        textView.anchor(top: topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 4, paddingLeft: 4, paddingBottom: 4, paddingRight: 4, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}



//
//class CommentCell: UICollectionViewCell {
//
//    var comment: Comment? {
//        didSet {
//            guard let comment = comment else { return }
//
//            let attributedText = NSMutableAttributedString(string: comment.user.username, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14)])
//
//            attributedText.append(NSAttributedString(string: " " + comment.text, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]))
//
//            textView.attributedText = attributedText
//
//            profileImageView.loadImage(urlString: comment.user.profileImageUrl)
//        }
//    }
//
//
//
//
//
//}
