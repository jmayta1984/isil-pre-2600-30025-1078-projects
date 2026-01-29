//
//  MainView.swift
//  EasyShoes
//
//  Created by Jorge Mayta on 28/01/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                
            }
            
            Tab("Shopping", systemImage: "cart") {
                
            }
            
            Tab("Favorites", systemImage: "heart") {
                
            }
            
            Tab("Profile", systemImage: "person") {
                
            }
        }
    }
}

#Preview {
    MainView()
}
