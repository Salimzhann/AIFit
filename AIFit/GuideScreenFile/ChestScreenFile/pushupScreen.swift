//
//  pushupScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 21.06.2023.
//

import SwiftUI

struct pushupScreen: View {
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
                        Image("pushupExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 286)
                        Text("Отжимание")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        Text("Отжимания широким хватом – это базовое упражнение, которое входит в тренировочный комплекс абсолютно всех видов спорта. Оно позволяет эффективно нагрузить мускулатуру верхней части корпуса, повысить силу и выносливость атлета, укрепить связки и суставы плечевого пояса.")
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
                        Text("\nТехника выполнения")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        VStack(spacing: 10){
                            Text("Примите исходное положение: упор лежа на вытянутых руках, голова поднята, взгляд направлен вперед, тело напряжено и вытянуто в струнку, спина прямая, попа не торчит. Ноги поставьте на носки, слегка разведите или поставьте вместе. Руки поставьте на пол пальцами вперед, на ширину чуть шире плеч, локти за пальцы не выступают.")
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
                            Text("На вдохе мягко опуститесь вниз, разводя локти в стороны. Коснитесь грудью пола, или остановитесь на высоте 3-5 см. На выдохе плавно поднимитесь вверх, не распрямляя локти до конца")
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
            .navigationTitle("Грудные Упражнения")
            .foregroundColor(.white)
            
        }
    }
}

struct pushupScreen_Previews: PreviewProvider {
    static var previews: some View {
        pushupScreen()
    }
}
