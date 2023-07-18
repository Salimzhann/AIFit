//
//  SgipshScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct SgipshScreen: View {
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
                            Image("sgipshExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 246)
                            Text("Сгибание рук со штангой")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing,30)
                                .padding(.bottom,1)
                            Text("Сгибания на бицепс со штангой – эффективное и популярное у мужчин упражнение для прокачки рук. Штанга позволяет распределить нагрузку равномерно и взять больший вес, чем гантели. Упражнение помогает задействовать много мышечных волокон, укрепляет суставы, кости, сухожилия и связки.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 210)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 2)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            VStack(spacing: 20){
                                Text("Схватитесь за снаряд руками на расстоянии ширины плеч. Локти зафиксированы в одном положении и плотно прижаты к телу.Мощным движением на выдохе сгибайте руки в локтях, поднимая штангу к туловищу до верха груди.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 170)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Когда штанга окажется в верхней точке, выдохните и ещё раз напрягите бицепсы. Зафиксируйтесь в этом положении на секунду.На выдохе медленно опустите штангу в исходное положение.Старайтесь не раскачиваться спиной во время выполнения.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 180)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Бицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct SgipshScreen_Previews: PreviewProvider {
    static var previews: some View {
        SgipshScreen()
    }
}
