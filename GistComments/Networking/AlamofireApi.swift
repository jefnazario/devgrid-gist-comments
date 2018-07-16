//
//  Api.swift
//  designpattern
//
//  Created by Jeferson Nazario on 18/02/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import Alamofire

class AlamofireApi: IApi {
    func request(_ url: String, methodType: RequestMethod, parameters: [String: Any]?, onCompletion: @escaping (Any) -> Void) {
        let api = Alamofire.SessionManager.default
        
        var method = HTTPMethod.get
        switch methodType {
        case .POST:
            method = HTTPMethod.post
        case .PUT:
            method = HTTPMethod.put
        case .DELETE:
            method = HTTPMethod.delete
        default:
            method = HTTPMethod.get
        }
        
        api.request(url, method: method, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            onCompletion(response)
        }
    }
}
