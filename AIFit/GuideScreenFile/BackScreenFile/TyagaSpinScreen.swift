//
//  TyagaSpinScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct TyagaSpinScreen: View {
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
                        Image("tyagaspinExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 286)
                        Text("Тяга штанги в наклоне")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        Text("Tяга штанги в наклоне — одно из пяти базовых упражнений бодибилдинга для набора мышечной массы. При его правильном выполнении в работе участвуют широчайшие мышцы спины, средняя и нижняя часть трапециевидных мышц, а также задняя часть дельтовидных")
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
                        VStack(spacing:10){
                            Text("Поставьте ноги чуть шире бёдер, но уже плеч, слегка разверните носки в стороны. Если у вас длинные ноги, можете поставить стопы ещё дальше друг от друга, чтобы не задевать грифом колени во время подъёма штанги.")
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
                            Text("Возьмитесь за гриф прямым хватом где‑то на ладонь шире плеч. Проверьте, чтобы штанга находилась над серединой стопы.Поднимите штангу с пола и выпрямитесь в тазобедренных и коленных суставах. Отведите таз назад, слегка согните колени и наклонитесь вперёд с прямой спиной, удерживая гриф в вытянутых руках")
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
                            Text("Если при наклоне корпуса под углом 45° у вас начинает тянуть мышцы на задней стороне бедра, работайте в этом положении. При большей мобильности тазобедренных суставов можете наклонить корпус практически до параллели с полом. Главное, чтобы в нижней точке у вас не округлялась поясница. Шею держите на одной прямой линии со спиной, взгляд направьте в пол перед собой.")
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

struct TyagaSpinScreen_Previews: PreviewProvider {
    static var previews: some View {
        TyagaSpinScreen()
    }
}
