//
//  PodtyagivanieScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct PodtyagivanieScreen: View {
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
                            Image("podtyagivanieEx")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 286)
                            Text("Подтягивание широким хватом")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .padding(.bottom,1)
                            Text("Подтягивания широким хватом качает верхнюю часть широчайших мышц спины. Является базовым. Самое эффективное упражнение для увеличения ширины спины. Придает V-образную форму.")
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
                                Text("Подпрыгните и возьмитесь за турник широким хватом. Дистанция между руками на 20-25 см шире плеч.Немного повисите на турнике. Чтобы максимально растянуть широчайшие мышцы спины, вообразите, что ваши руки — не более чем канаты, которые удерживают ваше тело на турнике: руки полностью расслаблены и выпрямлены, нагрузка поступает лишь на предплечья, дающие крепкий хват.")
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
                                Text("Глубоко вдохните и, остановив дыхание, напрягите широчайшие мышцы спины и подтянитесь вверх к грудной клетке. В течение подтягиваний широким хватом локти должны быть всегда расположены на одном и том же месте и быть зафиксированы, не оттягивайте их к бокам корпуса.")
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
                                Text("Подтягивайтесь до того положения, пока грудь не окажется на одном уровне с турником или немного ниже. Сделайте выдох и медленно спуститесь вниз в исходное положение.")
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
            .navigationTitle("Спина")
            .foregroundColor(.white)
            
        }
    }
}

struct PodtyagivanieScreen_Previews: PreviewProvider {
    static var previews: some View {
        PodtyagivanieScreen()
    }
}
