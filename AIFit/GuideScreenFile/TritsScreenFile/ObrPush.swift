//
//  ObrPush.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct ObrPush: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                        Image("obrpushExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 246)
                        Text("Oбратные отжимания от скамьи")
                            .foregroundColor(.white)
                            .font(.system(size: 22))
                            .bold()
                            .padding(.bottom,1)
                        Text("Обратные отжимания – это силовое упражнение для трицепса, которое выполняется с весом собственного тела.Обратные отжимания является одним из самых простых и при этом самых эффективных упражнений с весом собственного тела, нацеленных на мышцы трицепса.")
                            .frame(
                                minWidth: 0,
                                maxWidth: .infinity,
                                minHeight: 0,
                                maxHeight: .infinity,
                                alignment: .topLeading
                            )
                            .padding(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                            .foregroundColor(.white)
                        Text("\nТехника выполнения")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        VStack(spacing: 10){
                            Text("Расположите руки на ширине плеч на спортивной скамье или устойчивом стуле. Подвиньтесь поближе к скамье, локти должны находиться как можно ближе к телу.Вытяните ноги в длину перед собой,немного согните в коленях, пятки упираются в пол. Выпрямленные руки также слегка согните в локтях, чтобы не повредить суставы")
                                .frame(
                                    minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: .infinity,
                                    alignment: .topLeading
                                )
                                .padding(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                )
                            Text("На вдохе медленно согните локти,чтобы опустить свое тело к полу,пока плечо и предплечье не образуют угол 90 градусов. Обязательно держите спину близко к скамейке, спина прямая.В нижней части движения задержитесь на 3-5 секунд.")
                                .frame(
                                    minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: .infinity,
                                    alignment: .topLeading
                                )
                                .padding(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                )
                            Text("На выдохе, оттолкнувшись от скамьи, выпрямите локти и вернитесь в исходное положение.На протяжении всего упражнения держите спину ровной, не сутультесь. старайтесь опускать плечи, не подтягивайте их к ушам, когда опускаете и поднимаете тело.")
                                .frame(
                                    minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: .infinity,
                                    alignment: .topLeading
                                )
                                .padding(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                )
                        }
                    }.padding(.horizontal,16)
                }
            }
            .navigationTitle("Трицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct ObrPush_Previews: PreviewProvider {
    static var previews: some View {
        ObrPush()
    }
}
