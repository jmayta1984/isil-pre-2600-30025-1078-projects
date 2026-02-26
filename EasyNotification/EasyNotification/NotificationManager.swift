//
//  NotificationManager.swift
//  EasyNotification
//
//  Created by Jorge Mayta on 25/02/26.
//

import UserNotifications
import Combine

class NotificationManager: NSObject, ObservableObject, UNUserNotificationCenterDelegate {
    
    override init() {
        super.init( )
        configure()
    }
    
    func configure() {
        
        let center = UNUserNotificationCenter.current()
        center.delegate = self
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .badge, .sound])
        
    }
    
    
    func requestNotificationPermission() {
        
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if let error = error {
                print("Error requesting notification permission: \(error)")
            } else {
                print(granted ? "Notification permission granted." : "Notification permission denied.")
            }
        }
    }
    
    
    func timeIntervalNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = "Time interval notification."
        content.body = "This is a time interval notification."
        content.sound = .default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        let center = UNUserNotificationCenter.current()
        
        center.add(request) { error in
            if let error = error {
                print("Error adding notification: \(error).")
            } else {
                print("Notification added successfully.")
            }
        }
    }
    
    func calendarNotification () {
        
        let content = UNMutableNotificationContent()
        content.title = "Calendar notification."
        content.body = "This is a calendar notification."
        content.sound = .default
        
        var date = DateComponents()
        date.hour = 20
        date.minute = 8
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: false )
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        let center = UNUserNotificationCenter.current()
        
        center.add(request) { error in
            if let error = error {
                print("Error adding notification: \(error).")
            } else {
                print("Notification added successfully.")
            }
        }
    }
}
