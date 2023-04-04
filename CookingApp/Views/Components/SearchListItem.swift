//
//  SearchListItem.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 03.04.2023.
//

import SwiftUI

struct SearchListItem: View {
    var imageUrl: String
    var title: String
    var description: String
    
    var body: some View {
        HStack {
            DataProcessor.loadImage(from: imageUrl, frameWidth: 44, frameHeight: 44)
                .cornerRadius(16)
                //.padding()
            VStack(alignment: .leading) {
                Text(title)
                    .font(.custom(CustomFont.latoBold.rawValue, size: FontSize.body1.rawValue))
                    .foregroundColor(CustomColor.foreground)
                Text(description)
                    .font(.custom(CustomFont.latoRegular.rawValue, size: FontSize.body2.rawValue))
                    .foregroundColor(CustomColor.neutralAccent)
            }
            .padding()
        }
    }
}

struct SearchListItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchListItem(imageUrl: "https://www.goodlifeeats.com/wp-content/uploads/2014/04/strawberry-oatmeal-muffins-1.jpg", title: "Super Juicy Crock Pot Turkey Breast", description: "Blog")
    }
}
