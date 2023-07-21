//
//  AIFitApp.swift
//  AIFit
//
//  Created by Manas Salimzhan on 08.06.2023.
//

import SwiftUI
import UIKit
import Firebase
import FirebaseCore
import FirebaseMessaging


class AppDelegate: NSObject, UIApplicationDelegate {
    let gcmMessageIDKey = "gcm.Message_ID"
    var isCompletedDays: [Bool] = UserDefaults.standard.array(forKey: "isCompletedDays") as? [Bool] ?? [false, false, false, false, false, false, false]
    @AppStorage("nextday") var days: Int = 0
    let mainCh = MainPage()
    @AppStorage("checkDay") var checkday: Int = 0
    @AppStorage("waterCounter") var counter: Int = 0
    @AppStorage("incDay") var hasIncrementedCheckday: Bool = false
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        scheduleRefreshWhenDayChanges()
        FirebaseApp.configure()
        
        Messaging.messaging().delegate = self
        
        UNUserNotificationCenter.current().delegate = self

        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(
          options: authOptions,
          completionHandler: { _, _ in }
        )

        application.registerForRemoteNotifications()
        return true
    }
    
    private func scheduleRefreshWhenDayChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(refreshDaysAndCommits), name: .NSCalendarDayChanged, object: nil)
    }
    
    @objc private func refreshDaysAndCommits() {
        if mainCh.challenge || mainCh.challenge1 || mainCh.challenge2 || mainCh.challenge3 || mainCh.challenge4 {
            if days+1 == 7 {
                isCompletedDays = [false,false,false,false,false,false,false]
                UserDefaults.standard.set(isCompletedDays,forKey:"isCompletedDays")
            }
            if(days+1 < 7){
                days += 1
                UserDefaults.standard.set(false, forKey: "incDay")
                UserDefaults.standard.set(days, forKey: "nextday")
            }else{
                UserDefaults.standard.set(0,forKey: "nextday")
                UserDefaults.standard.set(0,forKey: "checkDay")
                UserDefaults.standard.set(0, forKey: "nextday")
                UserDefaults.standard.set(false, forKey: "IsActive")
                UserDefaults.standard.set(false, forKey: "IsActive1")
                UserDefaults.standard.set(false, forKey: "IsActive2")
                UserDefaults.standard.set(false, forKey: "IsActive3")
                UserDefaults.standard.set(false, forKey: "IsActive4")
            }
        }else{
            days = 0
            UserDefaults.standard.set(false, forKey: "incDay")
            UserDefaults.standard.set(days, forKey: "nextday")
        }
        UserDefaults.standard.set(0,forKey: "waterCounter")
    }
}

@main
struct AIFitApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

extension AppDelegate: MessagingDelegate{
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
      print("Firebase registration token: \(String(describing: fcmToken))")

      let dataDict: [String: String] = ["token": fcmToken ?? ""]
      NotificationCenter.default.post(
        name: Notification.Name("FCMToken"),
        object: nil,
        userInfo: dataDict
      )
      // TODO: If necessary send token to application server.
      // Note: This callback is fired at each app startup and whenever a new token is generated.
    }

}


extension AppDelegate: UNUserNotificationCenterDelegate {
  // Receive displayed notifications for iOS 10 devices.
  func userNotificationCenter(_ center: UNUserNotificationCenter,
                              willPresent notification: UNNotification) async
    -> UNNotificationPresentationOptions {
    let userInfo = notification.request.content.userInfo

    print(userInfo)

    // Change this to your preferred presentation option
        return [[.banner,.badge, .sound]]
  }

  func userNotificationCenter(_ center: UNUserNotificationCenter,
                              didReceive response: UNNotificationResponse) async {
    let userInfo = response.notification.request.content.userInfo

    print(userInfo)
  }
    func application(_ application: UIApplication,
                     didReceiveRemoteNotification userInfo: [AnyHashable: Any]) async
      -> UIBackgroundFetchResult {
    
      if let messageID = userInfo[gcmMessageIDKey] {
        print("Message ID: \(messageID)")
      }

      // Print full message.
      print(userInfo)

      return UIBackgroundFetchResult.newData
    }

}
