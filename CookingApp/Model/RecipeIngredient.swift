//
//  RecipeIngredient.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.03.2023.
//

import Foundation

struct RecipeIngredient: Identifiable, Codable {
    let recipeId: Int
    let ingredientId: Int
    let quantity: Double
    let unit: String

    var id: String {
        return "\(recipeId)_\(ingredientId)"
    }
}

