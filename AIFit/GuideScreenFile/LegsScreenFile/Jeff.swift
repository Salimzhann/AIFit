//
//  Jeff.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct Jeff: View {
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
                            Image("JeffExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 256)
                            Text("Приседание Джефферсона")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            Text("Приседания Джефферсона – это один из видов упражнений для развития мышц ног. Оно имеет множество разнообразных названий, например, приседания в седло и лошадка. Отличительной чертой этого движения является то, что во время него гриф штанги находится не на плечах, а между ног.")
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
                                Text("Встаньте так, чтобы гриф оказался между ваших ног. При этом туловище будет находиться чётко посередине грифа. Убедитесь, что ваши стопы стоят на ширине плеч, а носки слегка развёрнуты наружу.")
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
                                Text("Вдохните и медленно опускайтесь в приседание до тех пор, пока ваши бедра не окажутся параллельно полу. Правой рукой ухватите гриф штанги перед собой, а левой – сзади.")
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
                                Text("Выдохните и оттолкнитесь от пола ступнями и, сохраняя ровное положение спины, поднимитесь со штангой. Держите гриф на вытянутых руках, слегка сгибая локти. Так вы снимите излишнее напряжение с плеч и рук.На вдохе вновь опуститесь вниз. Это один повтор.")
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
            .navigationTitle("Ноги")
            .foregroundColor(.white)
            
        }
    }
}

struct Jeff_Previews: PreviewProvider {
    static var previews: some View {
        Jeff()
    }
}
