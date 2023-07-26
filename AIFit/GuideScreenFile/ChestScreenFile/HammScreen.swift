//
//  HammScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 20.06.2023.
//

import SwiftUI

struct HammScreen: View {
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
                            Image("hammExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 266)
                            Text("Жим в рычажном тренажере")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .padding(.bottom,1)
                            Text("Жим в рычажном тренажере для грудных мышц позволяет имитировать жим гантелей на наклонной скамье. Однако Вы можете работать с большим отягощением, чем при жиме гантелей. Это позволит более эффективно проработать грудь. Также стоит отметить то, что при правильной технике выполнения будет снижена нагрузка на плечевые суставы.")
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
                                        .frame(height: 230)
                                    
                                )
                                .foregroundColor(.white)
                                .opacity(0.8)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            VStack(spacing: 10){
                                Text("Установите на рычажном тренажере необходимый вес и настройте сидение исходя из своего роста. Рукояти тренажера необходимо зафиксировать на уровне верхней части Вашей груди.")
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
                                Text("Исходное положение: голова и груд устремите в направлении вверх, а лопатки сведите друг к другу. При помощи специальной педали поднимите вес в верхнюю позицию.")
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
                                Text("На вдохе - Плавно опускайте рукояти тренажера до тех пор, пока локти не будут согнуты до угла в 90 градусов.На выдохе - мощным усилием сделайте жим, вернувшись к исходному положению.")
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
                }
            .navigationTitle("Грудные Упражнения")
        }
    }
}

struct HammScreen_Previews: PreviewProvider {
    static var previews: some View {
        HammScreen()
    }
}
