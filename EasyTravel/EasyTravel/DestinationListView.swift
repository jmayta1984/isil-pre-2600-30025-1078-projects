//
//  DestinationListView.swift
//  EasyTravel
//
//  Created by Jorge Mayta on 4/02/26.
//

import SwiftUI

struct DestinationListView: View {
    @StateObject private var viewModel = DestinationListViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.destinations) { destination in
                    DestinationItemView(destination: destination)
                }
            }
            .listStyle(.plain)
        }
        .onAppear {
            viewModel.getAllDestinations()
        }
    }
}

#Preview {
    DestinationListView()
}
