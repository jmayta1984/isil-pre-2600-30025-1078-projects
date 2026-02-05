//
//  ProductImageView.swift
//  EasyShoes
//
//  Created by Jorge Mayta on 4/02/26.
//

import SwiftUI

struct ProductImageView: View {
    let product: Product
    
    var body: some View {
        
        if let image = product.images.first {
            AsyncImage(url: URL(string: image)) { phase in
                switch phase {
                case .empty:
                    EmptyView()
                case .success(let image):
                    image.resizable().scaledToFill()
                case .failure(let error):
                    EmptyView()
                @unknown default:
                    ProgressView()
                }
            }.frame(height: 200).clipShape(RoundedRectangle(cornerRadius: 16))
        }
        
        
    }
}
