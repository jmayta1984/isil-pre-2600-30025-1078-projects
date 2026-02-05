//
//  HomeView.swift
//  EasyShoes
//
//  Created by Jorge Mayta on 28/01/26.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.products) { product in
                    ProductItemView(product: product)
                }
              
            }
            .listStyle(.plain)
        }.onAppear {
            viewModel.getAllProducts()
        }
    }
}

#Preview {
    HomeView()
}
