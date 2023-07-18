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
                        VStack{
                            Image("molotExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            Text("Сгибание 'Молот'")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing,110)
                                .padding(.bottom,1)
                            Text("Упражнение молоток считается формирующим для мышц рук. Воздействует на боковую (наружную) головку бицепса, отлично прорабатывает брахиалис. Также нагрузка ложится на внешнюю часть предплечья, плечелучевую мышцу.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 170)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 2)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 80)
                                .padding(.bottom,1)
                            VStack(spacing: 20){
                                Text("Возьмите в руки гантели нейтральным хватом (ладони смотрят друг на друга).Сгибая руку в локте, поднесите одну гантель к плечу, не меняя хвата.Опустите руку в исходное положение, полностью выпрямив ее, и повторите упражнение другой рукой.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 170)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                            }
                        }
                    }
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
