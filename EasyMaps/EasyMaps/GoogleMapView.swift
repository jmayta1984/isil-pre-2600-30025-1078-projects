//
//  GoogleMapView.swift
//  EasyMaps
//
//  Created by Jorge Mayta on 18/02/26.
//

import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        let latitude = -12.125380913001488
        let longitude = -77.02477847892995
        
        let camera = GMSCameraPosition(latitude: latitude, longitude: longitude, zoom: 17)
        
        let options = GMSMapViewOptions()
        options.camera = camera
        
        let mapView = GMSMapView(options: options)
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        marker.title = "ISIL"
        marker.snippet = "Campus Miraflores"
        marker.map = mapView
        
        return mapView
        
        
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
