//
//  SuggestedCategoriesGrid.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 14.03.2023.
//

import SwiftUI

struct SuggestedCategoriesGrid: View {
//    @State var suggestedCategories: [Category]
    let dataSource = container.resolve(DataSource.self)
    @StateObject var categoryViewModel: CategoryViewModel = CategoryViewModel()
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
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 8)){
                    ForEach(categoryViewModel.categoryItems) { category in
                        SuggestedCategory(category: category)
                    }
                }
            
        }).padding()
    }
}

struct SuggestedCategoriesGrid_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedCategoriesGrid()
            //.environmentObject(CategoryViewModel())
    }
}
