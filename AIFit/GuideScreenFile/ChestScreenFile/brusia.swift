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
                            .padding(20)
                            .padding(.horizontal,5)
                            .frame(width: 406, height: 306)
                        Text("Отжимание на брусьях")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.trailing, 60)
                            .padding(.bottom,1)
                        Text("При отжиманиях на брусьях вы сможете укрепить те мышцы, которые не задействованы на турнике. Активнее всех вовлекаются трицепсы, плечи и грудные. При регулярных занятиях увеличивается объём мускулов, взрывная сила рук и скорость удара.")
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.white, lineWidth: 1)
                                    .frame(width: 350, height: 170)
                                
                            )
                            .padding(.horizontal,40)
                            .padding(.vertical, 1)
                            .foregroundColor(.white)
                        Text("\nТехника выполнения")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.trailing, 90)
                            .padding(.bottom,1)
                        VStack(spacing: 15){
                            Text("Крепко хватаемся за брусья, корпус ровный. Шея, спина и бёдра расположены на одной линии. Ноги вместе.Лопатки фиксируем и опускаем вниз.На вдохе плавно опускаем тело в нижнюю точку, сгибая локти до угла 90 градусов.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 160)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 1)
                                .padding(.bottom,10)
                            Text("На выдохе разгибаем руки, поднимая тело в верхнюю точку. Стараемся исключить рывки и раскачивания ногами. Отслеживаем правильное дыхание во время упражнения.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 120)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.bottom,40)
                        }
                    }
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
