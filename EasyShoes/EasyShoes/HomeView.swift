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
                ForEach(viewModel.brands, id: \.self) {
                    Text($0)
                }
                .onDelete { indexSet in
                    viewModel.removeBrand(at: indexSet)
                }
            }
        }.onAppear {
            viewModel.getAllBrands()
        }
    }
}

#Preview {
    HomeView()
}
