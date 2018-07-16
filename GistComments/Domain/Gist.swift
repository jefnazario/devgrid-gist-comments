//
//  Gist.swift
//  GistComments
//
//  Created by Jeferson Nazario on 15/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

struct Gist {
    var gistId = ""
    var htmlUrl = ""
    var files = [GistFile]()
    var lastUpdate = ""
    var comments = [GistComment]()
    var owner = GistUser()
}
