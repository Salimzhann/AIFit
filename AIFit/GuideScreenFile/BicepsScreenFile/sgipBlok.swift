//
//  sgipBlok.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct sgipBlok: View {
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
                            Image("sgipblokExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 246)
                            Text("Cгибание рук в нижнем блоке")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                                .bold()
                                .padding(.trailing,1)
                                .padding(.bottom,1)
                            Text("Это упражнение рекомендуется выполнять после основных упражнений на бицепс со штангой и гантелями. Оно отлично справляется с изолированной проработкой бицепсов, однако по эффективности отстает от упражнений со свободными весами.")
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
                            VStack(spacing: 20){
                                Text("Повернитесь спиной к тренажеру и возьмите одной рукой рукоять нижнего блока хватом ладонью вперед. На выдохе поднимите рабочую руку до уровня плеча. На вдохе медленно опустите руку в исходное положение. Выполните необходимое количество повторений и повторите упражнение для другой руки.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                            }
                        }
                    }
                }
            .navigationTitle("Бицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct sgipBlokn_Previews: PreviewProvider {
    static var previews: some View {
        sgipBlok()
    }
}
