//
//  NotificationHandler.swift
//  AIFit
//
//  Created by Manas Salimzhan on 19.07.2023.
//
import SwiftUI
import Foundation
import UserNotifications
class NotificationHandler{
    let motivationalQuotes = [
        "Самая большая победа начинается с первого шага на тренировке.",
        "Перед каждой победой стоит безусловный труд.",
        "Великие спортсмены не рождаются, они становятся таковыми через упорный труд.",
        "Тренируйся так, как будто никто не смотрит, и побеждай, как будто каждый наблюдает.",
        "Спорт - это борьба с самим собой, и победитель - тот, кто не сдается.",
        "Не сравнивай себя с другими, становись лучше, чем был вчера.",
        "У тебя есть ровно столько времени, сколько нужно, чтобы достичь своей цели.",
        "На пути к успеху нет лифтов, есть только лестницы.",
        "Только тот, кто рискует, может дойти до дальних границ своих возможностей.",
        "Спорт - это не только физическая сила, но и сила характера.",
        "Тренируйся упорно сегодня, чтобы завтра был повод гордиться.",
        "Когда ты думаешь, что уже достиг предела, помни, что твои возможности безграничны.",
        "Тренировка - это путь к совершенству.",
        "Пришло время преодолеть свои ограничения и превзойти самого себя.",
        "Самая сложная часть тренировки - это заставить себя начать.",
        "Самые красивые победы - те, что ты одерживаешь над самим собой.",
        "Твои мышцы не знают пределов, знакомься с новыми высотами.",
        "Сделай свои мечты сильнее, чем свои оправдания.",
        "Твое тело способно на большее, чем ты думаешь. Докажи это себе.",
        "Успех не приходит к тем, кто ждет, а к тем, кто действует.",
        "Твоя сила - в твоей настойчивости.",
        "Будь лучшим, не для других, а для себя.",
        "Каждая тренировка делает тебя сильнее. Каждая победа приближает тебя к цели.",
        "Соревнуйся сам с собой, чтобы стать лучше каждый день.",
        "Ты можешь все, что захочешь, если ты настолько на это настроен, насколько нужно."
    ]
    func askPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { success,error in
            if success {
                print("access granted")
            }else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    func sendNotification(){
        var trigger: UNNotificationTrigger?
        var dateComponents = DateComponents()
        dateComponents.hour = 8
        dateComponents.minute = 10
        trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        let content = UNMutableNotificationContent()
        content.title = "Мотивация дня!"
        content.body = motivationalQuotes[Int.random(in: 0..<motivationalQuotes.count)]
        content.sound = UNNotificationSound.default
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request){ error in
            if let error = error {
                print("Error scheduling notification: (error.localizedDescription)")
            } else {
                print("Notification scheduled successfully!")
            }
        }
    }
    
    func sendNotificationMotiv(){
        var trigger: UNNotificationTrigger?
        var dateComponents = DateComponents()
        dateComponents.hour = 20
        dateComponents.minute = 10
        trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        let content = UNMutableNotificationContent()
        content.title = "Время пришло!"
        content.body = "У вас есть испытание, думаю вы продержались сегодня?"
        content.sound = UNNotificationSound.default
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request){ error in
            if let error = error {
                print("Error scheduling notification: (error.localizedDescription)")
            } else {
                print("Notification 1 scheduled successfully!")
            }
        }
    }
}

