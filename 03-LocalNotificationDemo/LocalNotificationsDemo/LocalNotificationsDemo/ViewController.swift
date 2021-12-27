//
//  ViewController.swift
//  LocalNotificationsDemo
//
//  Created by Sanghun Park on 2021/12/27.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Ask for permission
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            // Check the granted and error parameter and handle those
            print(granted)
        }
        
        // Create the notification content
        let content = UNMutableNotificationContent()
        content.title = "Hey this is a notification!"
        content.body = "Look at this!"
        
        // Create the notification trigger
        let date = Date().addingTimeInterval(15)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        // Create the request
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        // Register the request
        center.add(request) { (error) in
            // Check the error parameter and handle any errors
            
        }
        
    }


}

