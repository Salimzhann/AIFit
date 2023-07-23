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
                                .frame(height: 286)
                            Text("Жим Свенда")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            Text("Жим Свенда — упражнение, придуманное норвежским силовиком и культуристом Свендом Карлсенон (Svend Karlsen).\nУпражнение обычно выполняется в конце тренировки грудных мышц, когда дельты и грудные уже утомлены; в работе также участвуют широчайшая и трицепсы, мышцы кора.")
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
                                .opacity(0.8)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            VStack{
                                Text("Стоя прямо сжимаются ладонями перед грудью пара «блинов» от штанги, затем распрямляются руки в локтевых суставах перед собой. Во время жима за счёт силы грудных мышц прижимаются друг к другу «блины», чтобы не выронились.")
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
                                    .opacity(0.8)
                                Text("Цель и эффект упражнения")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .bold()
                                    .padding(.bottom,1)
                                
                                Text("Цель упражнения — усиление грудных мышц и силы хвата, также горизонтальный жим стоя Свенда предполагает рост показателей в жиме лёжа и тягах для мышц спины.Фитнес-тренеры предлагают данное упражнение женщинам для восстановления и подтяжки груди после родов, оно улучшает форму молочных желез и мускулатуру рук.")
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
                                    .opacity(0.8)
                            }
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
