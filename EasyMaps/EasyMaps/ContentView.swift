//
//  ContentView.swift
//  EasyMaps
//
//  Created by Jorge Mayta on 18/02/26.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        GoogleMapView()
            .ignoresSafeArea()
    }
}

#Preview {
    
    ContentView()
}
