//
//  jimganScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 21.06.2023.
//

import SwiftUI

struct jimganScreen: View {
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
                        Image("shExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 286)
                        Text("Жим гантелей сидя")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        Text("Жим с гантелями — отличное средство глубокой проработки передних и средних головок дельты ]. Это упражнение наращивает массу и силу всех мышц, окружающих плечевой сустав, придает дельтам отчетливо-выпуклую форму.")
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
                        Text("\nТехника выполнения")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        VStack(spacing: 10){
                            Text("Установите спинку скамьи вертикально. Сядьте на скамью, возьмите в обе руки гантели и поднимите их над плечами. Чуть-чуть подайте гантели вперед и разверните так, чтобы ладони были направлены вперед.")
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
                            Text("Отведите плечи назад и расправьте грудь. Напрягите пресс, поясничные мышцы и зафиксируйте позвоночник в нормальном положении до конца сета. Слегка разведите гантели в стороны так, чтобы расстояние между ладонями было чуть шире плеч, а локти направлены в стороны и вниз.")
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
                            Text("Установите спинку скамьи вертикально. Сядьте на скамью, возьмите в обе руки гантели и поднимите их над плечами. Чуть-чуть подайте гантели вперед и разверните так, чтобы ладони были направлены вперед.")
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
                            Text("Сделайте вдох и, задержав дыхание, напрягите дельты и выжмите гантели по широкой дуге вверх. Обратите внимание: гантели движутся строго в вертикальной плоскости.Преодолев самый трудный участок жима, сделайте выдох, полностью выпрямите руки и изо всех сил напрягите дельты.В верхней точке гантели почти касаются друг друга, руки полностью выпрямлены, а плечи приподняты.Плавно опустите гантели по той же траектории к плечам и приступайте к следующему повторению.")
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
                    }
                    .padding(.vertical,20)
                    .padding(.horizontal,20)
                }
            }
            .navigationTitle("Плечи")
            .foregroundColor(.white)
        }
    }
}

struct jimganScreen_Previews: PreviewProvider {
    static var previews: some View {
        jimganScreen()
    }
}
