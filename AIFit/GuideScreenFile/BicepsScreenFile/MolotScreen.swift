//
//  MolotScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct MolotScreen: View {
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
                            Image("molotExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 286)
                            Text("Сгибание 'Молот'")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            Text("Упражнение молоток считается формирующим для мышц рук. Воздействует на боковую (наружную) головку бицепса, отлично прорабатывает брахиалис. Также нагрузка ложится на внешнюю часть предплечья, плечелучевую мышцу.")
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
                                Text("Возьмите в руки гантели нейтральным хватом (ладони смотрят друг на друга).Сгибая руку в локте, поднесите одну гантель к плечу, не меняя хвата.Опустите руку в исходное положение, полностью выпрямив ее, и повторите упражнение другой рукой.")
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
            .navigationTitle("Бицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct MolotScreen_Previews: PreviewProvider {
    static var previews: some View {
        MolotScreen()
    }
}
