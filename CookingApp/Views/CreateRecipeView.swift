//
//  CreateRecipeView.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 21.02.2023.
//

import SwiftUI

struct CreateRecipeView: View {
    @State private var recipeName = ""
    @State private var ingredients = ""
    @State private var instructions = ""

    var body: some View {
        Form {
            Section(header: Text("Recipe Details")) {
                TextField("Recipe Name", text: $recipeName)
                TextField("Ingredients", text: $ingredients)
                TextField("Instructions", text: $instructions)
            }
        }
        .navigationTitle("Create Recipe")
    }
}


struct CreateRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        CreateRecipeView()
    }
}
