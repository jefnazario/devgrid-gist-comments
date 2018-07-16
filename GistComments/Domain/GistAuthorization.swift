//
//  GistAuthorization.swift
//  GistComments
//
//  Created by Jeferson Nazario on 14/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import RealmSwift

class GistAuthorization: Object {
    @objc dynamic var code = ""
    
    static func save(code: String) {
        let repo = Repository<GistAuthorization>()
        
        // Delete old codes
        let allItems = repo.getAll()
        for item in allItems {
            repo.delete(item)
        }
        
        let gist = GistAuthorization()
        gist.code = code
        repo.add(gist)
    }
}
