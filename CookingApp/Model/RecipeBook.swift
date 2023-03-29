//
//  RecipeBook.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.03.2023.
//

import Foundation

struct RecipeBook: Identifiable, Codable {
    let id: Int
    let userId: Int
    let name: String
    let description: String
    let createdAt: Date
    let updatedAt: Date
}

