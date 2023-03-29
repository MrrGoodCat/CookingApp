//
//  SuggestedRecipe.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 01.03.2023.
//

import Foundation

//struct Recipe {
//    public let title: String
//    public let images: [ObjCEnumerationImage]
//    public let description: String
//    public let tags: [String]
//    public let categories: [Category]
//}

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
    let createdAt: Date
    let updatedAt: Date
    let calories: Int
}
