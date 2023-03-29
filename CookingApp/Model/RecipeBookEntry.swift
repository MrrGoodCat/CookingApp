//
//  RecipeBookEntry.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.03.2023.
//

import Foundation

struct RecipeBookEntry: Identifiable, Codable {
    let id: Int
    let recipeBookId: Int
    let recipeId: Int
    let notes: String?
    let createdAt: Date
}

