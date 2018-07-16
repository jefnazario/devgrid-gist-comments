//
//  GistCommentViewCell.swift
//  GistComments
//
//  Created by Jeferson Nazario on 16/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import UIKit
import Kingfisher

class GistCommentViewCell: UITableViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblNameUser: UILabel!
    @IBOutlet weak var txtComment: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(with author: GistUser, and comment: GistComment?) {
        if let hasComment = comment {
            let resource = ImageResource(downloadURL: URL(string: hasComment.owner.avatarUrl)!)
            imgAvatar.kf.setImage(with: resource)
            lblNameUser.text = hasComment.owner.login
            let myAttribute = [ NSAttributedStringKey.foregroundColor: UIColor.darkGray ]
            let myAttrString = NSAttributedString(string: hasComment.body, attributes: myAttribute)
            txtComment.attributedText = myAttrString
            txtComment.isUserInteractionEnabled = false
        } else {
            let resource = ImageResource(downloadURL: URL(string: author.avatarUrl)!)
            imgAvatar.kf.setImage(with: resource)
            lblNameUser.text = author.login
            txtComment.text = ""
            txtComment.isUserInteractionEnabled = true
        }
    }
}
