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
                        VStack{
                            Image("JeffExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 256)
                            Text("Приседание Джефферсона")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing,5)
                                .padding(.bottom,1)
                            Text("Приседания Джефферсона – это один из видов упражнений для развития мышц ног. Оно имеет множество разнообразных названий, например, приседания в седло и лошадка. Отличительной чертой этого движения является то, что во время него гриф штанги находится не на плечах, а между ног.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 210)
                                    
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
                            VStack(spacing: 30){
                                Text("Встаньте так, чтобы гриф оказался между ваших ног. При этом туловище будет находиться чётко посередине грифа. Убедитесь, что ваши стопы стоят на ширине плеч, а носки слегка развёрнуты наружу.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 150)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Вдохните и медленно опускайтесь в приседание до тех пор, пока ваши бедра не окажутся параллельно полу. Правой рукой ухватите гриф штанги перед собой, а левой – сзади.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 120)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Выдохните и оттолкнитесь от пола ступнями и, сохраняя ровное положение спины, поднимитесь со штангой. Держите гриф на вытянутых руках, слегка сгибая локти. Так вы снимите излишнее напряжение с плеч и рук.На вдохе вновь опуститесь вниз. Это один повтор.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                               
                            }
                        }
                    }
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
