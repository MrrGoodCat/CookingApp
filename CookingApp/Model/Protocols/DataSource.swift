//
//  DataSource.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 25.02.2023.
//

import Foundation

protocol DataSource {
    func loadRecipes() -> [Recipe]
    func loadCategoriesFor(resipeId: Int) -> [RecipeCategory]
    func loadCategories() -> [RecipeCategory]
    func loadIngredientsFor(resipeId: Int) -> [RecipeIngredient]
    func loadStepsFor(resipeId: Int) -> [RecipeStep]
}
