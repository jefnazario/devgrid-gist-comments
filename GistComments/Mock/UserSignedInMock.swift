//
//  UserSignedInMock.swift
//  GistComments
//
//  Created by Jeferson Nazario on 16/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

class UserSignedInMock {
    static func get() -> GistUser {
        let user = GistUser(login: "jefnazario", avatarUrl: "https://avatars0.githubusercontent.com/u/2067078?v=4", profileUrl: "https://github.com/jefnazario", type: "User")
        return user
    }
}
