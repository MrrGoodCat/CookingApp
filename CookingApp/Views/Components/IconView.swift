//
//  IconView.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 12.03.2023.
//

import SwiftUI

struct IconView: View {
    let icon: Icon
    let size: CGFloat
    let color: Color
    
    var body: some View {
        Image(icon.rawValue)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
            .foregroundColor(color)
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(icon: .translation, size: 24, color: .gray)
    }
}
