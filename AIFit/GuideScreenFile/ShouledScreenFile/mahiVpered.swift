//
//  mahiVpered.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct mahiVpered: View {
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
                            Image("mahivprered")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            Text("Mахи гантелями перед собой")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                .bold()
                                .padding(.trailing, 5)
                                .padding(.bottom,1)
                            Text("Mахи гантелями перед собой — это одно из наиболее эффективных упражнений для проработки дельтовидных мышц. Эти мышцы охватывают плечевой сустав подобно наплечнику доспехов и состоят из трех пучков: переднего, среднего и заднего.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 170)
                                    
                                )
                                .padding(.horizontal,40)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            VStack(spacing: 15){
                                Text("На выдохе поднимите руки с гантелями до уровня подбородка. Руки во время движения остаются слегка согнутыми в локтях и не выпрямляются до конца. Движение должно производиться исключительно за счет вращения в плечевом суставе.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 170)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.top, 1)
                                    .padding(.bottom,5)
                                
                                Text("Следите за тем, чтобы движение рук осуществлялось в вертикальной плоскости без смещений по горизонтали. При одновременном поднятии гантелей расстояние между руками должно равняться ширине плеч. Запрещается сводить или разводить руки в стороны.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.vertical, 5)
                                
                                Text("Крайняя точка движения находится на уровне подбородка. Достигнув её, задержитесь на пару секунд, максимально напрягите дельты и медленно вернитесь в исходное положение.Сделайте непродолжительную паузу (на 1–2 дыхательных цикла) и повторите.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.vertical, 5)
                            }
                            .padding(.horizontal,10)
                            .padding(.top,1)
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

struct mahiVpered_Previews: PreviewProvider {
    static var previews: some View {
        mahiVpered()
    }
}
