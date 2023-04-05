//
//  SuggestedCategoriesGrid.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 14.03.2023.
//

import SwiftUI

struct SuggestedCategoriesGrid: View {
    @Binding var categories: [RecipeCategory]
    var body: some View {
        
        let columns: [GridItem] = [
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil)
        ]
        LazyVGrid(columns: columns, alignment: .center, spacing: 20, content: {
            Section(header:
                        Text("Suggest")
                .foregroundColor(CustomColor.foreground)
                .font(.custom(CustomFont.latoHeavy.rawValue, size: FontSize.body1.rawValue))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 10)){
                    ForEach(categories) { category in
                        SuggestedCategory(category: category)
                    }
                }
            
        }).padding()
    }
}

struct SuggestedCategoriesGrid_Previews: PreviewProvider {
    static let searchVievModel = SearchViewModel()
    static var previews: some View {
        SuggestedCategoriesGrid(categories: .constant(searchVievModel.categoryItems) )
    }
}
