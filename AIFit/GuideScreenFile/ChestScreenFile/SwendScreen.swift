//
//  SwendScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 20.06.2023.
//

import SwiftUI

struct SwendScreen: View {
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
                            Image("swendExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .frame(width: 406, height: 366)
                            Text("Жим Свенда")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 200)
                                .padding(.bottom,1)
                            Text("Жим Свенда — упражнение, придуманное норвежским силовиком и культуристом Свендом Карлсенон (Svend Karlsen).\nУпражнение обычно выполняется в конце тренировки грудных мышц, когда дельты и грудные уже утомлены; в работе также участвуют широчайшая и трицепсы, мышцы кора.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 370, height: 190)
                                        .padding(.horizontal,16)
                                    
                                )
                                .padding(.horizontal,30)
                                .foregroundColor(.white)
                                .opacity(0.8)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 110)
                                .padding(.bottom,1)
                            VStack{
                                Text("Стоя прямо сжимаются ладонями перед грудью пара «блинов» от штанги, затем распрямляются руки в локтевых суставах перед собой. Во время жима за счёт силы грудных мышц прижимаются друг к другу «блины», чтобы не выронились.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 370, height: 140)
                                            .padding(.horizontal,16)
                                        
                                    )
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                Text("\nЦель и эффект упражнения")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .bold()
                                    .padding(.trailing, 25)
                                    .padding(.bottom,1)
                                
                                Text("Цель упражнения — усиление грудных мышц и силы хвата, также горизонтальный жим стоя Свенда предполагает рост показателей в жиме лёжа и тягах для мышц спины.Фитнес-тренеры предлагают данное упражнение женщинам для восстановления и подтяжки груди после родов, оно улучшает форму молочных желез и мускулатуру рук.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 370, height: 230)
                                            .padding(.horizontal,16)
                                    )
                                    .padding(.horizontal,15)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                            }
                            .padding(.horizontal,16)
                        }
                        .padding(.horizontal,16)
                        .padding(.vertical, 20)
                    }
                    .navigationTitle("Грудные Упражнения")
                }
        }
    }
}

struct SwendScreen_Previews: PreviewProvider {
    static var previews: some View {
        SwendScreen()
    }
}
