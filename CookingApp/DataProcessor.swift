//
//  DataProcessor.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 13.03.2023.
//

import Foundation
import SwiftUI

struct DataProcessor {
    
    @ViewBuilder
    static func loadUrlImage(from url: URL?, frameWidth: CGFloat, frameHeigh: CGFloat) -> some View {
        if let url = url {
            let asyncImage = AsyncImage(url: url) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(CustomColor.neutralAccent)
                case .empty:
                    ProgressView()
                @unknown default:
                    fatalError()
                }
            }
            asyncImage
                .frame(width: frameWidth, height: frameHeigh)
        } else {
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: frameWidth, height: frameHeigh)
        }
    }
    
    @ViewBuilder
    static func loadImage(from urlString: String?, frameWidth: CGFloat, frameHeight: CGFloat) -> some View {
        if let urlString = urlString,
            let url = URL(string: urlString) {
            let asyncImage = AsyncImage(url: url) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(CustomColor.neutralAccent)
                case .empty:
                    ProgressView()
                @unknown default:
                    fatalError()
                }
            }
            asyncImage
                .frame(width: frameWidth, height: frameHeight)
        } else {
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: frameWidth, height: frameHeight)
        }
    }



}
