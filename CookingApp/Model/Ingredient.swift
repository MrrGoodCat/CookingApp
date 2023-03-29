//
//  Ingredient.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.03.2023.
//

import Foundation

struct Ingredient: Identifiable, Codable {
    let id: Int
    let name: String
    let imageUrl: String?
}

