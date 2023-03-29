//
//  TextFieldWithIcon.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 26.02.2023.
//

import SwiftUI

struct TextFieldWithIcon: View {
    @Binding var text: String
    var placeholder: String
    var icon: Icon
    var horisontalPadding: CGFloat
    
    var body: some View {
        ZStack {
            CustomColor.componentBackground
                .cornerRadius(12)
            HStack {
                IconView(icon: icon, size: 24, color: CustomColor.neutralAccent)
                TextField(self.placeholder, text: $text)
                    
            }.padding(.horizontal, self.horisontalPadding)
        }.frame(width: UIScreen.main.bounds.width - (self.horisontalPadding * 2), height: 48)
    }
}


struct TextFieldWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithIcon(text: .constant(""), placeholder: "Search...", icon: .search, horisontalPadding: 24)
    }
}
