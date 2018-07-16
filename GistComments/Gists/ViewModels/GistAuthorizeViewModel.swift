//
//  GistAuthorize.swift
//  GistComments
//
//  Created by Jeferson Nazario on 13/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import SVProgressHUD

class GistAuthorizeViewModel {
    fileprivate let api: IApi!
    
    init() {
        api = AlamofireApi()
    }
    
    func checkAuthorization(onGranted: @escaping () -> Void, onDenied: @escaping () -> Void) {
        SVProgressHUD.show()
        SVProgressHUD.dismiss(withDelay: 1) {
            onGranted()
        }
    }
}
