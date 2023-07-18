//
//  SwiftUIView.swift
//  AIFit
//
//  Created by Manas Salimzhan on 09.07.2023.
//

import Combine
import SwiftUI

struct Challenges: View {
    @AppStorage("checkDay") var checkday: Int = 0
    @AppStorage("nextday") var days: Int = 0
    var null = MainPage()
    @State var titles: String
    @State var sd:  CGFloat
    @State var isCompletedDays: [Bool] = UserDefaults.standard.array(forKey: "isCompletedDays") as? [Bool] ?? [false, false, false, false, false, false, false]
    @State private var cancellables = Set<AnyCancellable>()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .padding(.horizontal, 16)
                .frame(width: 392, height: 218)
                .foregroundColor(Color(.darkGray))
                .opacity(0.3)
            
            VStack {
                Text(titles)
                    .font(.system(size: 23))
                    .padding(.trailing, sd)
                    .foregroundColor(.white)
                    .bold()
                
                Text("\(checkday)/7 дней")
                    .foregroundColor(.blue)
                    .font(.system(size: 25))
                    .bold()
                    .padding(.trailing, 220)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 300, height: 20)
                        .foregroundColor(.gray)
                    
                    HStack {
                        ForEach(0..<7) { index in
                            circles(prog: index + 1)
                                .foregroundColor(isCompletedDays[index] ? .blue : Color(.darkGray))
                        }
                    }
                }
                
                Button(action: {
                    print(isCompletedDays[days])
                    print(days)
                    isCompletedDays[days] = true
                    print(isCompletedDays[days])
                    print(days)
                    UserDefaults.standard.set(isCompletedDays, forKey: "isCompletedDays")
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 17)
                            .frame(width: 180, height: 40)
                            .foregroundColor(.white)
                        
                        Text(isCompletedDays[days] ? "Выполнено" : "Завершить день \(days+1)")
                            .foregroundColor(.black)
                        
                    }
                    
                })
            }
        }
        .onAppear {
            if !null.challenge || !null.challenge1 || !null.challenge2 || !null.challenge3 || !null.challenge4 {
                isCompletedDays = [false, false, false, false, false, false, false]
                UserDefaults.standard.set(isCompletedDays,forKey: "isCompletedDays")
            }
            if isCompletedDays[days] == true {
                checkday += 1
                UserDefaults.standard.set(checkday, forKey: "checkDay")
            }
        }
    }
}

struct circles: View {
    var prog: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 40, height: 40)
            
            Text("\(prog)")
                .foregroundColor(.white)
        }
    }
}

