//
//  DestinationItemImageView.swift
//  EasyTravel
//
//  Created by Jorge Mayta on 4/02/26.
//

import SwiftUI

struct DestinationItemImageView: View {
    let poster: String
    var body: some View {
        AsyncImage(url: URL(string: poster)) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
            case .failure:
                Image(systemName: "photo")
                    .foregroundColor(.secondary)
            case .empty:
                ProgressView()
                
            @unknown default:
                EmptyView()
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 200).clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
