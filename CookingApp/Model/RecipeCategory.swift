//
//  Category.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 13.03.2023.
//

import Foundation

//struct Category: Identifiable {
//    let id = UUID()
//    public var name: String
//    public var imageUrl: URL?
//}

struct RecipeCategory: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let imageUrl: String?
}
