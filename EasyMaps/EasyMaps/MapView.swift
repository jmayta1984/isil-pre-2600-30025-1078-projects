//
//  MapView.swift
//  EasyMaps
//
//  Created by Jorge Mayta on 18/02/26.
//

import MapKit
import SwiftUI

struct MapView: View {
    var body: some View {
        Map {
            Marker("ISIL", coordinate: CLLocationCoordinate2D(latitude: -12.125380913001488, longitude: -77.02477847892995))
        }
    }
}

#Preview {
    MapView()
}
