//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 0 images.
  struct image {
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 3 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `gistCommentCell`.
    static let gistCommentCell: Rswift.ReuseIdentifier<GistCommentViewCell> = Rswift.ReuseIdentifier(identifier: "gistCommentCell")
    /// Reuse identifier `gistDetailCell`.
    static let gistDetailCell: Rswift.ReuseIdentifier<GistViewCell> = Rswift.ReuseIdentifier(identifier: "gistDetailCell")
    /// Reuse identifier `gistHeaderCell`.
    static let gistHeaderCell: Rswift.ReuseIdentifier<GistHeaderViewCell> = Rswift.ReuseIdentifier(identifier: "gistHeaderCell")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 1 view controllers.
  struct segue {
    /// This struct is generated for `HomeViewController`, and contains static references to 1 segues.
    struct homeViewController {
      /// Segue identifier `segueScanQR`.
      static let segueScanQR: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, HomeViewController, UIKit.UINavigationController> = Rswift.StoryboardSegueIdentifier(identifier: "segueScanQR")
      
      /// Optionally returns a typed version of segue `segueScanQR`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func segueScanQR(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, HomeViewController, UIKit.UINavigationController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.homeViewController.segueScanQR, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 4 storyboards.
  struct storyboard {
    /// Storyboard `Gists`.
    static let gists = _R.storyboard.gists()
    /// Storyboard `Home`.
    static let home = _R.storyboard.home()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `QRScan`.
    static let qrScan = _R.storyboard.qrScan()
    
    /// `UIStoryboard(name: "Gists", bundle: ...)`
    static func gists(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.gists)
    }
    
    /// `UIStoryboard(name: "Home", bundle: ...)`
    static func home(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.home)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "QRScan", bundle: ...)`
    static func qrScan(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.qrScan)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 3 localization tables.
  struct string {
    /// This `R.string.home` struct is generated, and contains static references to 3 localization keys.
    struct home {
      /// pt-BR translation: Boas vindas
      /// 
      /// Locales: pt-BR
      static let ffECPGKsText = Rswift.StringResource(key: "FfE-CP-GKs.text", tableName: "Home", bundle: R.hostingBundle, locales: ["pt-BR"], comment: nil)
      /// pt-BR translation: Clique aqui para começar
      /// 
      /// Locales: pt-BR
      static let wx98DAXNormalTitle = Rswift.StringResource(key: "9Wx-98-DAX.normalTitle", tableName: "Home", bundle: R.hostingBundle, locales: ["pt-BR"], comment: nil)
      /// pt-BR translation: Gist Comments
      /// 
      /// Locales: pt-BR
      static let vyZI2Pr9Title = Rswift.StringResource(key: "VyZ-i2-Pr9.title", tableName: "Home", bundle: R.hostingBundle, locales: ["pt-BR"], comment: nil)
      
      /// pt-BR translation: Boas vindas
      /// 
      /// Locales: pt-BR
      static func ffECPGKsText(_: Void = ()) -> String {
        return NSLocalizedString("FfE-CP-GKs.text", tableName: "Home", bundle: R.hostingBundle, comment: "")
      }
      
      /// pt-BR translation: Clique aqui para começar
      /// 
      /// Locales: pt-BR
      static func wx98DAXNormalTitle(_: Void = ()) -> String {
        return NSLocalizedString("9Wx-98-DAX.normalTitle", tableName: "Home", bundle: R.hostingBundle, comment: "")
      }
      
      /// pt-BR translation: Gist Comments
      /// 
      /// Locales: pt-BR
      static func vyZI2Pr9Title(_: Void = ()) -> String {
        return NSLocalizedString("VyZ-i2-Pr9.title", tableName: "Home", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    /// This `R.string.launchScreen` struct is generated, and contains static references to 1 localization keys.
    struct launchScreen {
      /// pt-BR translation: Gist Comments
      /// 
      /// Locales: pt-BR
      static let pJEUKOGgText = Rswift.StringResource(key: "pJE-uK-OGg.text", tableName: "LaunchScreen", bundle: R.hostingBundle, locales: ["pt-BR"], comment: nil)
      
      /// pt-BR translation: Gist Comments
      /// 
      /// Locales: pt-BR
      static func pJEUKOGgText(_: Void = ()) -> String {
        return NSLocalizedString("pJE-uK-OGg.text", tableName: "LaunchScreen", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    /// This `R.string.screenLabels` struct is generated, and contains static references to 3 localization keys.
    struct screenLabels {
      /// en translation: Comments
      /// 
      /// Locales: en, pt-BR
      static let sectionComments = Rswift.StringResource(key: "SectionComments", tableName: "ScreenLabels", bundle: R.hostingBundle, locales: ["en", "pt-BR"], comment: nil)
      /// en translation: There's an error on your request. Please, try again later.
      /// 
      /// Locales: en, pt-BR
      static let requestGenericError = Rswift.StringResource(key: "requestGenericError", tableName: "ScreenLabels", bundle: R.hostingBundle, locales: ["en", "pt-BR"], comment: nil)
      /// en translation: Welcome to Gist Comments, please, tap on 'Let's start' button below to read a gist QRCode or tap on 'My Comments' button to see your interactions.
      /// 
      /// Locales: en, pt-BR
      static let welcomeHomeScreen = Rswift.StringResource(key: "WelcomeHomeScreen", tableName: "ScreenLabels", bundle: R.hostingBundle, locales: ["en", "pt-BR"], comment: nil)
      
      /// en translation: Comments
      /// 
      /// Locales: en, pt-BR
      static func sectionComments(_: Void = ()) -> String {
        return NSLocalizedString("SectionComments", tableName: "ScreenLabels", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: There's an error on your request. Please, try again later.
      /// 
      /// Locales: en, pt-BR
      static func requestGenericError(_: Void = ()) -> String {
        return NSLocalizedString("requestGenericError", tableName: "ScreenLabels", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Welcome to Gist Comments, please, tap on 'Let's start' button below to read a gist QRCode or tap on 'My Comments' button to see your interactions.
      /// 
      /// Locales: en, pt-BR
      static func welcomeHomeScreen(_: Void = ()) -> String {
        return NSLocalizedString("WelcomeHomeScreen", tableName: "ScreenLabels", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try qrScan.validate()
    }
    
    struct gists: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = GistDetailViewController
      
      let bundle = R.hostingBundle
      let name = "Gists"
      
      fileprivate init() {}
    }
    
    struct home: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "Home"
      
      fileprivate init() {}
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct qrScan: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "QRScan"
      let scannerView = StoryboardViewControllerResource<QRScanViewController>(identifier: "scannerView")
      
      func scannerView(_: Void = ()) -> QRScanViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: scannerView)
      }
      
      static func validate() throws {
        if _R.storyboard.qrScan().scannerView() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'scannerView' could not be loaded from storyboard 'QRScan' as 'QRScanViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
