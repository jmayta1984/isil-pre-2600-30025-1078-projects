//
//  DestinationItemView.swift
//  EasyTravel
//
//  Created by Jorge Mayta on 4/02/26.
//

import SwiftUI

struct DestinationItemView: View {
    let destination: Destination
    
    var body: some View {
        VStack (alignment: .leading){
            DestinationItemImageView(poster: destination.poster)
            Text(destination.title).bold()
            Text(destination.country)
        }
        
    }
    
}
