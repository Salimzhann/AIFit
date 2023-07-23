//
//  arnoldScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct arnoldScreen: View {
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
                            Image("arnoldExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 286)
                            Text("Жим Арнольда")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            Text("Это модификация жима гантелей вверх, разработанная Арнольдом Шварценеггером и названная в его честь. Упражнение сочетает жим с разводкой рук. В исходном положении предплечья находятся перед телом, что обеспечивает дополнительную нагрузку на переднюю часть плеч.")
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
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            
                            VStack(spacing: 10){
                                Text("Установите спинку скамьи под углом 90°, плотно прижмите поясницу к спинке, стопы — к полу. Поднимите руки с гантелями перед собой, согните до прямого угла в локтях и разверните ладонями к себе — это стартовое положение.")
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
                                Text("Разведите локти в стороны, одновременно разворачивая руки ладонями вперёд, и выжмите гантели над головой. Выполните это одним слитным движением, без остановки.")
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
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                }
            }
            .navigationTitle("Грудные Упражнения")
            .foregroundColor(.white)
        }
    }
}

struct arnoldScreen_Previews: PreviewProvider {
    static var previews: some View {
        arnoldScreen()
    }
}
