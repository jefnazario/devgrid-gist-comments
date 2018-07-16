//
//  StringExtensions.swift
//  GistComments
//
//  Created by Jeferson Nazario on 15/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import Foundation

extension String {
    func toFormattedDate() -> String {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        df.locale = Locale.init(identifier: "pt-br")
        df.timeZone = TimeZone(abbreviation: "UTC")
        if let date = df.date(from: self) {
            df.dateFormat = "dd/MM/yyyy HH:mm"
            return df.string(from: date)
        }
        
        df.dateFormat = "dd/MM/yyyy HH:mm"
        return df.string(from: Date())
    }
}
