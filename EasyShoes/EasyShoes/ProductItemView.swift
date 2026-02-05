//
//  ProductItemView.swift
//  EasyShoes
//
//  Created by Jorge Mayta on 4/02/26.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack (alignment: .leading) {
            ProductImageView(product: product)
            Text(product.title).bold().lineLimit(1)
            Text(product.description).lineLimit(2)
        }
    }
}
