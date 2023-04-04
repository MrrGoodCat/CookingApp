//
//  FileManager.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 04.04.2023.
//

import CoreText
import Foundation

extension FileManager {
    static func registerFont(withFileName fileName: String, bundle: Bundle = .main) {
        guard let fontURL = bundle.url(forResource: fileName, withExtension: nil) else {
            print("Failed to register font - \(fileName) not found.")
            return
        }

        var errorRef: Unmanaged<CFError>?
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, &errorRef)
    }
}
