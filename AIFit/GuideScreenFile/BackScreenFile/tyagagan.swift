//
//  tyagagan.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct tyagagan: View {
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
                        Image("tyagaganExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 286)
                        Text("Tяга гантелей в наклоне")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        Text("Тяга гантели в наклоне одной рукой – упражнение, без которого невозможно построение по-настоящему объемной и мускулистой спины. Это упражнение, как и все остальные горизонтальные тяги для спины, направлено, в первую очередь, на увеличение толщины спины.")
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
                            Text("Вам нужно опереться одной рукой о гантельную стойку или другую возвышенность, поставить ногу вперед и немного отвезти таз назад, сохраняя наклон туловища примерно в 45 градусов. В таком положении больше будет работать верхняя часть широчайших мышц, а также ромбовидная мышца и задняя дельта.")
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
                            Text("Спину держим прямой, взгляд направлен вперед, не округляем грудной отдел позвоночника. Допускается использование атлетического пояса при работе с серьезными весами, а также кистевых лямок или крюков, если Вы хотите максимально снять нагрузку с бицепсов и предплечий.")
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
                            Text("Начните подъем гантели вверх, делая выдох. Движение должно производиться немного по дуге. Гантель не просто поднимается вверх, но еще и отводится к поясу – так нагрузка на широчайшие мышцы спины будет носить пиковый характер. Пытайтесь не включать в работу бицепсы, для этого сконцентрируйтесь на движении лопаток.")
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

struct tyagagan_Previews: PreviewProvider {
    static var previews: some View {
        tyagagan()
    }
}
