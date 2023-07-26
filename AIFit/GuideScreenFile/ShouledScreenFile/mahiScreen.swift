//
//  mahiScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct mahiScreen: View {
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
                            Image("mahiExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 276)
                            Text("Махи гантелями в стороны")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            Text("Упражнения на плечи с гантелями нужны для подкачки дельтовидной мышцы. Одно из самых эффективных упражнений - это махи гантелями стоя. Техника выполнения довольно проста, если ее совершать правильно.")
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
                                Text("Взять две гантели в руки так, чтобы они находились горизонтально к полу. Встать, немного расставить ноги и выпрямить спину. Зафиксировать локтевой сустав в слегка согнутом состоянии.")
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
                                Text("Совершить на вдохе махи гантелями в стороны, доводя локоть до уровня плеч. Делая махи поворачивайте руки так, чтобы мизинец показывал на потолок - этот нюанс поможет задействовать и переднюю, и заднюю 'дельту' одновременно;")
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
                                Text("Вернуть руки в исходное положение и выдохнуть.")
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
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                }
            }
            .navigationTitle("Плечи")
            .foregroundColor(.white)
        }
    }
}

struct mahiScreen_Previews: PreviewProvider {
    static var previews: some View {
        mahiScreen()
    }
}
