//
//  MockDataProvider.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 01.03.2023.
//

import Foundation

class MockDataProvider: DataSource {
    
    func loadCategories(completion: @escaping ([RecipeCategory]) -> Void) {
        guard let jsonString = Bundle.main.path(forResource: "RecipeCategory", ofType: "json").flatMap({ try? String(contentsOfFile: $0) }) else {
            print("Unable to read JSON string from file")
            completion([])
            return
        }

        guard let recipeCategories = DataService.shared.parseJson(jsonString: jsonString, type: [RecipeCategory].self) else {
            print("Unable to parse JSON string into a Recipe Category object")
            completion([])
            return
        }

        completion(recipeCategories)
    }


    
    func loadStepsFor(resipeId: Int) -> [RecipeStep] {
        return []
    }
    
    func loadCategoriesFor(resipeId: Int) -> [RecipeCategory] {
        return []
    }
    
    func loadIngredientsFor(resipeId: Int) -> [RecipeIngredient] {
        return []
    }

    
    func loadRecipes(completion: @escaping ([Recipe]) -> Void) {
        guard let jsonString = Bundle.main.path(forResource: "Recipe", ofType: "json").flatMap({ try? String(contentsOfFile: $0) }) else {
            print("Unable to read JSON string from file")
            completion([])
            return
        }
        
        guard let recipes = DataService.shared.parseJson(jsonString: jsonString, type: [Recipe].self) else {
            print("Unable to parse JSON string into a Recipe object")
            completion([])
            return
        }
        
        completion(recipes)
    }


}
