//
//  GistDetailViewModel.swift
//  GistComments
//
//  Created by Jeferson Nazario on 12/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import UIKit
import SVProgressHUD

class GistDetailViewModel {
    fileprivate var api: IApi!
    fileprivate var repoAuth: Repository<GistAuthorization>!
    
    var currentGist: Gist?
    var gistFiles: [GistFile]?
    
    init() {
        api = AlamofireApi()
        repoAuth = Repository<GistAuthorization>()
    }
    
    func numberOfSections() -> Int {
        return 3
    }
    
    func numberOfRows(in section: Int) -> Int {
        switch section {
        case 0:
            if let _ = currentGist { return 1 }
        case 1:
            if let files = gistFiles {
                return files.count
            }
        case 2:
            if let gist = currentGist {
                return gist.comments.count + 1
            }
            
            return 0
        default:
            return 0
        }
        
        return 0
    }
    
    func titleForHeader(in section: Int) -> String {
        if let _ = currentGist, section == 2 {
            return R.string.screenLabels.sectionComments()
        }
        
        return ""
    }
    
    func footerHeight() -> CGFloat {
        return CGFloat.leastNonzeroMagnitude
    }
    
    func cell(at indexPath: IndexPath, with tableView: UITableView) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.gistHeaderCell.identifier) as! GistHeaderViewCell
            if let gist = currentGist {
                cell.setup(gist.owner.avatarUrl, gist.owner.login, gist.lastUpdate.toFormattedDate())
            }
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.gistDetailCell.identifier) as! GistViewCell
            if let files = gistFiles, let gist = currentGist {
                let file = files[indexPath.row]
                cell.setup(file, and: gist)
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.gistCommentCell.identifier) as! GistCommentViewCell
            var comment: GistComment? = nil
            if let gist = currentGist {
                if indexPath.row < gist.comments.count {
                    comment = gist.comments[indexPath.row]
                }
            }
            cell.setup(with: UserSignedInMock.get(), and: comment)
            return cell
        }
    }
    
    func loadGistDetail(onComplete: @escaping () -> Void) {
        let authorization = GistAuthorizeViewModel()
        authorization.checkAuthorization(onGranted: {
            self.currentGist = ListGistMock.get()
            self.gistFiles = self.currentGist?.files
            onComplete()
        }) {
            print("access denied")
        }
    }
    
    func setupGistHeaderCell() {
        
    }
}
