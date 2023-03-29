//
//  RecipeStep.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.03.2023.
//

import Foundation

struct RecipeStep: Identifiable, Codable {
    let id: Int
    let recipeId: Int
    let stepNumber: Int
    let imageUrl: String?
}

