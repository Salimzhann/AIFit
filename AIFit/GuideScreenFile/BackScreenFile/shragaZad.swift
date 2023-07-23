//
//  zhragaZad.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct shragaZad: View {
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
                            Image("shragazadExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 286)
                            Text("Шрага со штангой за спиной")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            Text("Шраги со штангой за спиной качают верх трапеций. Является формирующим упражнением. Шраги со штангой увеличивают в объеме верх трапеций и шею.")
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
                                Text("Выпрямитесь. Расположите ноги на ширине плеч и слегка согните колени. Теперь вам понадобиться партнер для подачи штанги, так как самостоятельно взять штангу задача непростая и опасная. Возьмите ее верхним хватом (ладони при этом должны смотреть назад). Удерживайте расстояние между ладонями немного больше ширины плеч.")
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
                                    Text("Став прямо, выпятите и приподнимите грудь, отведите ваши плечи назад. Живот втянуть, а спину ни в коем случае не сгибать. Полностью выпрямите руки за спиной. Штанга должна находиться чуть ниже уровня ягодиц.")
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
                                Text("Взгляд направлен прямо. Вдохните, задержите дыхание и максимально поднимите плечи вверх. Не нужно помогать, сгибая руки, обязательно сохраняйте их прямыми на протяжении выполнения всего упражнения. В движении только плечи, ноги, спина и грудь должны оставаться неподвижными.")
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
            .navigationTitle("Спина")
            .foregroundColor(.white)
            
        }
    }
}

struct shragaZad_Previews: PreviewProvider {
    static var previews: some View {
        shragaZad()
    }
}
