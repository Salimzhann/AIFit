//
//  IzzaheadGan.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct IzzaheadGan: View {
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
                        Image("izzaheadganExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 286)
                        
                        Text("Разгибание рук из-за головы")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .bold()
                            .padding(.bottom,1)
                        Text("Разгибание рук со штангой из-за головы или как его называют спортсмены «Французский жим» стоя выполняется как основное упражнение для работы с мышцами трицепса.")
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
                            .padding(.vertical,1)
                        VStack(spacing: 10){
                            Text("Возьми штангу так, чтобы расстояние между руками было 20-30 см хватом ладонями к себе.Поставь ноги на ширине плеч и слегка согни их в коленях, подними штангу над собой и напряги пресс.")
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
                            Text("Медленно опускай штангу за голову на столько, насколько возможно при этом сгибая руки в локтях. Задержись на 1-3 секунды и вернись в исходное положение. Сделай требуемое количество повторений.")
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
            .navigationTitle("Трицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct IzzaheadGan_Previews: PreviewProvider {
    static var previews: some View {
        IzzaheadGan()
    }
}
