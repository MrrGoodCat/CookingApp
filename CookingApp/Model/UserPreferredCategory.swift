//
//  UserPreferredCategory.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.03.2023.
//

import Foundation

struct UserPreferredCategory: Identifiable, Codable {
    let userId: Int
    let categoryId: Int

    var id: String {
        return "\(userId)_\(categoryId)"
    }
}
