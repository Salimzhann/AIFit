//
//  SgipSidyaScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct SgipSidyaScreen: View {
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
                            Image("sgipsidyaExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 246)
                            Text("Сгибание рук с гантелями сидя")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .padding(.trailing,30)
                                .padding(.bottom,1)
                            Text("Сгибание рук с гантелями сидя - изолированное упражнение, направленное на развитие мышц-сгибателей руки (главным образом бицепса). В упражнении также задействованы: передняя дельтовидная мышца, в меньшей степени верхний отдел большой грудной мышцы.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 190)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 2)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            VStack(spacing: 20){
                                Text("Возьмите гантели нейтральным хватом и держите их в опущенных вниз руках.Согнув одну руку в локте, поднесите гантель к плечу, поворачивая при этом кисть так, что бы ладонь была обращена назад. Опустите гантель в исходное положение и повторите упражнение другой рукой.")
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
            .navigationTitle("Бицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct SgipSidyaScreen_Previews: PreviewProvider {
    static var previews: some View {
        SgipSidyaScreen()
    }
}
