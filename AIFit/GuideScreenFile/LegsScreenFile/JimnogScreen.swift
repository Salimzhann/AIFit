//
//  JimnogScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct JimnogScreen: View {
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
                            Image("jimnogExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 256)
                            Text("Жим ногами")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .padding(.trailing,210)
                                .padding(.bottom,1)
                            Text("Жим ногами — это популярное силовое упражнение для прокачки ног, которое выполняется в специальном тренажёре, горизонтальном или вертикальном (наклонном). В первом человек сидит прямо, как на стуле, и толкает платформу параллельно полу, во втором — лежит на скамье под углом 45° и жмёт ногами вверх.")
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
                            VStack(spacing: 30){
                                Text("Сядьте на кресло тренажёра, поставьте стопы посередине платформы на ширине плеч. Чуть разверните носки наружу. Прижмите спину и бёдра к креслу и снимите ограничители, освобождая платформу.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 150)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Если вы делаете жим ногами на горизонтальном тренажёре, просто поставьте нужный вес на блоках, сядьте в кресло и возьмитесь за рукоятки, чтобы плотнее прижать тело к сиденью.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 130)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Согните ноги в коленях до прямого угла. Убедитесь, что таз и поясница не отрываются от сиденья тренажёра. Если это происходит, сместите стопы чуть ниже. Преодолевая сопротивление платформы, разогните ноги в коленях почти до полного выпрямления, но не блокируйте их в крайней точке")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Ноги")
            .foregroundColor(.white)
            
        }
    }
}

struct JimnogScreen_Previews: PreviewProvider {
    static var previews: some View {
        JimnogScreen()
    }
}
