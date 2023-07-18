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
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 256)
                            Text("Tяга гантелей в наклоне")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing,40)
                                .padding(.bottom,1)
                            Text("Тяга гантели в наклоне одной рукой – упражнение, без которого невозможно построение по-настоящему объемной и мускулистой спины. Это упражнение, как и все остальные горизонтальные тяги для спины, направлено, в первую очередь, на увеличение толщины спины.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 190)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 1)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            VStack(spacing: 20){
                                Text("Вам нужно опереться одной рукой о гантельную стойку или другую возвышенность, поставить ногу вперед и немного отвезти таз назад, сохраняя наклон туловища примерно в 45 градусов. В таком положении больше будет работать верхняя часть широчайших мышц, а также ромбовидная мышца и задняя дельта.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                    Text("Спину держим прямой, взгляд направлен вперед, не округляем грудной отдел позвоночника. Допускается использование атлетического пояса при работе с серьезными весами, а также кистевых лямок или крюков, если Вы хотите максимально снять нагрузку с бицепсов и предплечий.")
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 14)
                                                .stroke(Color.white, lineWidth: 1)
                                                .frame(width: 350, height: 210)
                                            
                                        )
                                        .padding(.horizontal,40)
                                        .padding(.vertical, 1)
                                Text("Начните подъем гантели вверх, делая выдох. Движение должно производиться немного по дуге. Гантель не просто поднимается вверх, но еще и отводится к поясу – так нагрузка на широчайшие мышцы спины будет носить пиковый характер. Пытайтесь не включать в работу бицепсы, для этого сконцентрируйтесь на движении лопаток.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 230)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                            }
                        }
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
