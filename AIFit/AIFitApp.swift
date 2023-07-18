//
//  AIFitApp.swift
//  AIFit
//
//  Created by Manas Salimzhan on 08.06.2023.
//

import SwiftUI
import UIKit


class AppDelegate: NSObject, UIApplicationDelegate {
    var days = UserDefaults.standard.integer(forKey: "nextday")
    let mainCh = MainPage()
    @AppStorage("waterCounter") var counter: Int = 0
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        scheduleRefreshWhenDayChanges()
        return true
    }
    
    private func scheduleRefreshWhenDayChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(refreshDaysAndCommits), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }
    
    @objc private func refreshDaysAndCommits() {
        if mainCh.challenge || mainCh.challenge1 || mainCh.challenge2 || mainCh.challenge3 || mainCh.challenge4 {
            if(days+1 < 7){
                days += 1
                UserDefaults.standard.set(days, forKey: "nextday")
            }else{
                days = 0
                UserDefaults.standard.set(days, forKey: "nextday")
                mainCh.challenge = false
                mainCh.challenge1 = false
                mainCh.challenge2 = false
                mainCh.challenge3 = false
                mainCh.challenge4 = false
                UserDefaults.standard.set(mainCh.challenge, forKey: "IsActive")
                UserDefaults.standard.set(mainCh.challenge1, forKey: "IsActive1")
                UserDefaults.standard.set(mainCh.challenge2, forKey: "IsActive2")
                UserDefaults.standard.set(mainCh.challenge3, forKey: "IsActive3")
                UserDefaults.standard.set(mainCh.challenge4, forKey: "IsActive4")
            }
        }else{
            days = 0
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
