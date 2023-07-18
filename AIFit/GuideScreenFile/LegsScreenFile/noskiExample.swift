//
//  noskiExample.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct noskiExample: View {
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
                            Image("noskiExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 266)
                            Text("Подъем на носки стоя")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing,80)
                                .padding(.bottom,1)
                            Text("Подъем на носки стоя – самое эффективное упражнение для развития икрононожных мышц. Его основное преимущество состоит в том, что мы можем максимально растянуть икры в нижней точке амплитуды и статически сократить в верхней точке.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 170)
                                    
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
                            VStack(spacing: 30){
                                Text("Исходное положение для выполнения упражнения – стоим на платформе только носками стопы, пятки опускаем вниз и стараемся, чтобы они максимально “провалились”.Чувствуете растяжение в икрах? Значит, все правильно. Это наша исходная точка, досюда нужно доводить каждое повторение.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("В нижней точке на несколько секунд задерживаемся, чтобы дополнительно растянуть икроножные мышцы. Упражнение выполняется в максимально возможной амплитуде.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 130)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Далее снова поднимаемся на носки, при этом пытаемся подняться как можно выше.Наверху делаем пиковое сокращение.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 100)
                                        
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

struct noskiExample_Previews: PreviewProvider {
    static var previews: some View {
        noskiExample()
    }
}
