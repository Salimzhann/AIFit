//
//  SgipBlockScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct SgipBlockScreen: View {
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
                            Image("sgipblockExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 266)
                            Text("Сгибание рук в блоке")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing,80)
                                .padding(.bottom,1)
                            VStack{
                                Text("Это упражнение рекомендуется выполнять после основных упражнений на бицепс со штангой и гантелями. Оно отлично справляется с изолированной проработкой бицепсов, однако по эффективности отстает от упражнений со свободными весами.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 160)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.top, 2)
                                    .padding(.bottom,15)
                                    .foregroundColor(.white)
                                Text("Но не смотря на то, что эффективность этого упражнения ниже, мы все равно рекомендуем включить его в вашу программу тренировок, не зависимо от вашего уровня подготовленности. Разнообразие упражнений позволит предотвратить привыкание и поможет избежать застоя в прогрессе.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 2)
                                    .foregroundColor(.white)
                            }
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 80)
                                .padding(.bottom,1)
                            VStack(spacing: 20){
                                Text("Возьмите рукоять нижнего блока хватом ладонями вверх. На выдохе, напрягая бицепсы, поднимите руки. На вдохе опустите руки в исходное положение. При выполнении упражнения, следите чтобы верхняя часть рук оставалась неподвижной.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 170)
                                        
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

struct SgipBlockScreen_Previews: PreviewProvider {
    static var previews: some View {
        SgipBlockScreen()
    }
}
