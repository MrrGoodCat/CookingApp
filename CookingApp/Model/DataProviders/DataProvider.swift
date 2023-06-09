//
//  DataProvider.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 01.03.2023.
//

import Foundation

class DataProvider: DataSource {
    func loadRecipes(completion: @escaping ([Recipe]) -> Void) {
        return
    }
    
    func loadCategoriesFor(resipeId: Int) -> [RecipeCategory] {
        return []
    }
    
    func loadCategories(completion: @escaping ([RecipeCategory]) -> Void) {
        return 
    }
    
    func loadIngredientsFor(resipeId: Int) -> [RecipeIngredient] {
        return []
    }
    
    func loadStepsFor(resipeId: Int) -> [RecipeStep] {
        return []
    }
    
}
