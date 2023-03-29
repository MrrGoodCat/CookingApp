//
//  ShoppingListItem.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.03.2023.
//

import Foundation

struct ShoppingListItem: Identifiable, Codable {
    let id: Int
    let shoppingListId: Int
    let ingredientId: Int
    let quantity: Double
    let unit: String
    let checked: Bool
}

