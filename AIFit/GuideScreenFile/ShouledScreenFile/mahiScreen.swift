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
                        
                        VStack{
                            Image("mahiExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            Text("Махи гантелями в стороны")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 20)
                                .padding(.bottom,1)
                            Text("Упражнения на плечи с гантелями нужны для подкачки дельтовидной мышцы. Одно из самых эффективных упражнений - это махи гантелями стоя. Техника выполнения довольно проста, если ее совершать правильно.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 140)
                                    
                                )
                                .padding(.horizontal,40)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            
                            VStack(spacing: 10){
                                Text("Взять две гантели в руки так, чтобы они находились горизонтально к полу. Встать, немного расставить ноги и выпрямить спину. Зафиксировать локтевой сустав в слегка согнутом состоянии.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 140)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.vertical, 1)
                                
                                Text("Совершить на вдохе махи гантелями в стороны, доводя локоть до уровня плеч. Делая махи поворачивайте руки так, чтобы мизинец показывал на потолок - этот нюанс поможет задействовать и переднюю, и заднюю 'дельту' одновременно;")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 160)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.vertical, 5)
                                
                                Text("Вернуть руки в исходное положение и выдохнуть.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 50)
                                        
                                    )
                                    .padding(.vertical, 5)
                            }
                            .padding(.horizontal,10)
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                        
                        
                    }
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
