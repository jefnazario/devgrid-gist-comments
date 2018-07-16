//
//  ViewController.swift
//  GistComments
//
//  Created by Jeferson Nazario on 11/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var lblWelcome: UILabel!
    
    var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWelcome.text = R.string.screenLabels.welcomeHomeScreen()
    }
    
    @IBAction func btnStartTouchUpInside(_ sender: UIButton) {
        // The code below it's only to skip QRCode scan flow.
        // To skipe scan just switch comments.
        
//        viewModel.openGistAfterScan("mockedcode", navigateFrom: self)
       performSegue(withIdentifier: R.segue.homeViewController.segueScanQR.identifier, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == R.segue.homeViewController.segueScanQR.identifier {
            viewModel.setScanDelegate(from: self, to: segue)
        }
    }
}

extension HomeViewController: QRScanDelegate {
    func didScan(_ value: String) {
        viewModel.openGistAfterScan(value, navigateFrom: self)
    }
}

















