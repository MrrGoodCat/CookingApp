//
//  SuggestItem.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 26.02.2023.
//

import SwiftUI
//import URLImage

struct SuggestedCategory: View {
    @State var category: RecipeCategory
    var body: some View {
        ZStack {
            CustomColor.componentBackground
                .cornerRadius(16)
            VStack {
                DataProcessor.loadImage(from: category.imageUrl, frameWidth: 61, frameHeight: 64)
                    .padding()
                    
                Spacer()
                Text(category.name)
                    .foregroundColor(CustomColor.neutralAccent)
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .padding()
                Spacer()


            }
        }.frame(width: 96, height: 152)
    }
}

struct SuggestedCategory_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedCategory(category: RecipeCategory(id: 0, name: "Sushi", description: "Some text for sushi", imageUrl: "https://www.pngplay.com/wp-content/uploads/8/Sushi-Transparent-PNG.png"))
    }
}

