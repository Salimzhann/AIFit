//
//  svrukScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 21.06.2023.
//

import SwiftUI

struct svrukScreen: View {
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
                            Image("svrukExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                                Text("Жим в рычажном тренажере")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 20)
                                .padding(.bottom, 1)
                            Text("При соблюдении правильной техники выполнения упражнения «Сведение рук в тренажере (Бабочка)» работают следующие группы мышц: Грудь, а также задействуются вспомогательные мышцы:")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 370, height: 120)
                                        .padding(.horizontal,16)
                                    
                                )
                                .padding(.horizontal,20)
                                .foregroundColor(.white)
                                .opacity(0.8)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 110)
                                .padding(.bottom,1)
                            VStack(spacing:20){
                                Text("Сядьте на тренажер с плоской спинкой. Возьмитесь за ручки тренажера. Это исходная позиция. Совет: отрегулируйте тренажер таким образом, чтобы во время выполнения упражнения ваши плечи оказались параллельны полу.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 370, height: 140)
                                            .padding(.horizontal,16)
                                        
                                    )
                                    .padding(.horizontal,20)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                Text("Медленно сведите ручки тренажера друг к другу, почувствуйте напряжение в середине груди. Выдохните и секунду удерживайте напряжение.На вдохе вернитесь в исходную позицию – мышцы груди должны полностью растянуться.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 370, height: 140)
                                            .padding(.horizontal,16)
                                        
                                    )
                                    .padding(.horizontal,20)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                    .padding(.horizontal, 16)
                            }
                        }
                        .padding(.vertical,20)
                        .padding(.horizontal,20)
                    }
                }
            }
            .navigationTitle("Грудные Упражнения")
            .foregroundColor(.white)
        }
    }
}

struct svrukScreen_Previews: PreviewProvider {
    static var previews: some View {
        svrukScreen()
    }
}
