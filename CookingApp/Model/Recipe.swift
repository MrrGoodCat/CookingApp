//
//  SuggestedRecipe.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 01.03.2023.
//

import Foundation

struct Recipe: Identifiable, Codable {
    let id: Int
    let userId: Int
    let name: String
    let imageUrl: String?
    let description: String
    let prepTime: Int
    let cookTime: Int
    let servings: Int
    let difficulty: String
    let categoryId: Int
    let dishTypeId: Int
    let cuisineId: Int
    let occasionId: Int
    let createdAt: String
    let updatedAt: String
    let calories: Int
}



