//
//  GoogleMapHelper.swift
//  EasyMaps
//
//  Created by Jorge Mayta on 18/02/26.
//

import GoogleMaps

class GoogleMapHelper {
    
    static let shared = GoogleMapHelper()
    
    private init() {
        GMSServices.provideAPIKey("YOUR API KEY HERE")
    }
}
