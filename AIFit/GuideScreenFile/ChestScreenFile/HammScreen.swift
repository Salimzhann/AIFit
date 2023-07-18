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
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            
                            Text("Жим в рычажном тренажере")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 5)
                                .padding(.bottom,1)
                            Text("Жим в рычажном тренажере для грудных мышц позволяет имитировать жим гантелей на наклонной скамье. Однако Вы можете работать с большим отягощением, чем при жиме гантелей. Это позволит более эффективно проработать грудь. Также стоит отметить то, что при правильной технике выполнения будет снижена нагрузка на плечевые суставы.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 230)
                                    
                                )
                                .padding(.horizontal,16)
                                .foregroundColor(.white)
                                .opacity(0.8)
                                .padding(.horizontal,18)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 100)
                                .padding(.bottom,1)
                            VStack(spacing: 24){
                                Text("Установите на рычажном тренажере необходимый вес и настройте сидение исходя из своего роста. Рукояти тренажера необходимо зафиксировать на уровне верхней части Вашей груди.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 120)
                                        
                                    )
                                    .padding(.horizontal,18)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                Text("Исходное положение: голова и груд устремите в направлении вверх, а лопатки сведите друг к другу. При помощи специальной педали поднимите вес в верхнюю позицию.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 120)
                                        
                                    )
                                    .padding(.horizontal,22)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                Text("На вдохе - Плавно опускайте рукояти тренажера до тех пор, пока локти не будут согнуты до угла в 90 градусов.На выдохе - мощным усилием сделайте жим, вернувшись к исходному положению.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 140)
                                        
                                    )
                                    .padding(.horizontal,18)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                 
                            }
                            .padding(.horizontal,16)
                            .padding(.bottom, 20)
                        }
                        .padding(.horizontal,16)
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
