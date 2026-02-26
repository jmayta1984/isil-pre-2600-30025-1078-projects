//
//  ContentView.swift
//  EasyNotification
//
//  Created by Jorge Mayta on 25/02/26.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var notificationManager: NotificationManager
    
    var body: some View {
        VStack {
            Button {
                notificationManager.timeIntervalNotification()
            } label: {
                Label("Time interval", systemImage: "bell")
            }
            
            Button {
                notificationManager.calendarNotification()
            } label: {
                Label("Calendar", systemImage: "calendar")
            }

        }
        .onAppear {
            notificationManager.requestNotificationPermission()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(NotificationManager())
}
