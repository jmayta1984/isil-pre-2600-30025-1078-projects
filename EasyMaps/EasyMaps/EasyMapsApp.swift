//
//  EasyMapsApp.swift
//  EasyMaps
//
//  Created by Jorge Mayta on 18/02/26.
//

import SwiftUI

@main
struct EasyMapsApp: App {
    let helper = GoogleMapHelper.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
