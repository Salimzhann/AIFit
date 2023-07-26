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
                            Image("sgipblockExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 226)
                            Text("Сгибание рук в блоке")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            VStack{
                                Text("Это упражнение рекомендуется выполнять после основных упражнений на бицепс со штангой и гантелями. Оно отлично справляется с изолированной проработкой бицепсов, однако по эффективности отстает от упражнений со свободными весами.")
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
                                Text("Но не смотря на то, что эффективность этого упражнения ниже, мы все равно рекомендуем включить его в вашу программу тренировок, не зависимо от вашего уровня подготовленности. Разнообразие упражнений позволит предотвратить привыкание и поможет избежать застоя в прогрессе.")
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
                            }
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            VStack(spacing: 10){
                                Text("Возьмите рукоять нижнего блока хватом ладонями вверх. На выдохе, напрягая бицепсы, поднимите руки. На вдохе опустите руки в исходное положение. При выполнении упражнения, следите чтобы верхняя часть рук оставалась неподвижной.")
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
