//
//  GistHeaderViewCell.swift
//  GistComments
//
//  Created by Jeferson Nazario on 15/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import UIKit
import Kingfisher

class GistHeaderViewCell: UITableViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblGistTitle: UILabel!
    @IBOutlet weak var lblCreationDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setup(_ avatarUrl: String, _ title: String, _ creationDate: String) {
        let resource = ImageResource(downloadURL: URL(string: avatarUrl)!)
        imgAvatar.kf.setImage(with: resource)
        
        lblGistTitle.text = title
        lblCreationDate.text = creationDate
    }

}
