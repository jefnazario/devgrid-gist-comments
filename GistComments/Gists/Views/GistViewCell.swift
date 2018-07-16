//
//  GistViewCell.swift
//  GistComments
//
//  Created by Jeferson Nazario on 12/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import UIKit

class GistViewCell: UITableViewCell {

    @IBOutlet weak var lblFilename: UILabel!
    @IBOutlet weak var lblUserType: UILabel!
    @IBOutlet weak var lblContent: UILabel!
    
    var file: GistFile!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lblUserType.layer.masksToBounds = true
        lblUserType.layer.cornerRadius = 5.0
    }
    
    func setup(_ file: GistFile, and gist: Gist) {
        lblFilename.text = file.filename
        lblUserType.text = file.type
        let myAttribute = [ NSAttributedStringKey.foregroundColor: UIColor.darkGray ]
        let myAttrString = NSAttributedString(string: file.content, attributes: myAttribute)
        lblContent.attributedText = myAttrString
        self.file = file
    }
}
