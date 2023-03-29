//
//  ShoppingList.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.03.2023.
//

import Foundation

struct ShoppingList: Identifiable, Codable {
    let id: Int
    let userId: Int
    let name: String
    let createdAt: Date
}
