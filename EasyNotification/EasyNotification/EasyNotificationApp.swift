//
//  EasyNotificationApp.swift
//  EasyNotification
//
//  Created by Jorge Mayta on 25/02/26.
//

import SwiftUI

@main
struct EasyNotificationApp: App {
    let notificationManager = NotificationManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(notificationManager)
        }
    }
}
