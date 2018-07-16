//
//  HomeViewModel.swift
//  GistComments
//
//  Created by Jeferson Nazario on 11/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import UIKit

class HomeViewModel {
    func setScanDelegate(from homeVc: HomeViewController, to segue: UIStoryboardSegue) {
        let nav = segue.destination as! UINavigationController
        let scanner = nav.topViewController as! QRScanViewController
        scanner.delegate = homeVc
    }
    
    func openGistAfterScan(_ code: String, navigateFrom viewController: UIViewController ) {
        if let gistVc = R.storyboard.gists().instantiateInitialViewController() as? GistDetailViewController {
            gistVc.gistCode = code
            viewController.navigationController?.pushViewController(gistVc, animated: true)
        }
    }
}
