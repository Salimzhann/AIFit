//
//  AIFitApp.swift
//  AIFit
//
//  Created by Manas Salimzhan on 08.06.2023.
//

import SwiftUI
import UIKit


class AppDelegate: NSObject, UIApplicationDelegate {
    var isCompletedDays: [Bool] = UserDefaults.standard.array(forKey: "isCompletedDays") as? [Bool] ?? [false, false, false, false, false, false, false]
    @AppStorage("nextday") var days: Int = 0
    let mainCh = MainPage()
    @AppStorage("checkDay") var checkday: Int = 0
    @AppStorage("waterCounter") var counter: Int = 0
    @AppStorage("notifDay") var notifCou: Int = 0
    @AppStorage("incDay") var hasIncrementedCheckday: Bool = false
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        scheduleRefreshWhenDayChanges()
        requestNotificationAuthorization()
        scheduleDailyMotivationalNotification()
      return true
    }
    
    private func requestNotificationAuthorization() {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                if success {
                    print("Access granted for notifications")
                } else if let error = error {
                    print(error.localizedDescription)
                }
            }
        }
        
        private func scheduleDailyMotivationalNotification() {
            UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
            let notificationHandler = NotificationHandler()
            notificationHandler.sendNotification()
            if( mainCh.challenge || mainCh.challenge1 || mainCh.challenge2 || mainCh.challenge3 || mainCh.challenge4 ){
                notificationHandler.sendNotificationMotiv()
            }
        }
    
    private func scheduleRefreshWhenDayChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(refreshDaysAndCommits), name: .NSCalendarDayChanged, object: nil)
    }
    
    @objc private func refreshDaysAndCommits() {
        UserDefaults.standard.set(0, forKey: "notifDay")
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
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
                .preferredColorScheme(.dark)
        }
    }
}
