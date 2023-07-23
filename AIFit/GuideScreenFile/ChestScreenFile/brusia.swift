//
//  brusia.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct brusia: View {
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
                        Image("brusiaExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 286)
                        Text("Отжимание на брусьях")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        Text("При отжиманиях на брусьях вы сможете укрепить те мышцы, которые не задействованы на турнике. Активнее всех вовлекаются трицепсы, плечи и грудные. При регулярных занятиях увеличивается объём мускулов, взрывная сила рук и скорость удара.")
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
                            .padding(.vertical, 1)
                            .foregroundColor(.white)
                        Text("\nТехника выполнения")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        VStack(spacing: 10){
                            Text("Крепко хватаемся за брусья, корпус ровный. Шея, спина и бёдра расположены на одной линии. Ноги вместе.Лопатки фиксируем и опускаем вниз.На вдохе плавно опускаем тело в нижнюю точку, сгибая локти до угла 90 градусов.")
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
                            Text("На выдохе разгибаем руки, поднимая тело в верхнюю точку. Стараемся исключить рывки и раскачивания ногами. Отслеживаем правильное дыхание во время упражнения.")
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
                        .padding(.vertical,20)
                }
            }
            .navigationTitle("Грудные Упражнения")
            .foregroundColor(.white)
            
        }
    }
}

struct brusia_Previews: PreviewProvider {
    static var previews: some View {
        brusia()
    }
}
