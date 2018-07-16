//
//  IApi.swift
//  GistComments
//
//  Created by Jeferson Nazario on 13/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

protocol IApi {
    func request(_ url: String, methodType: RequestMethod, parameters: [String: Any]?, onCompletion: @escaping (Any) -> Void)
}
