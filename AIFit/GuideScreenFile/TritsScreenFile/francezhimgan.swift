//
//  francezhimgan.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct francezhimgan: View {
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
                            Image("francezhimExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 256)
                            Text("Французский жим с гантелями")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                                .bold()
                                .padding(.trailing,5)
                                .padding(.bottom,1)
                            Text("Конечно, приседания в тренажере Смита несколько уступают традиционным приседаниям со штангой в деле построения массивных бедер. Но вместе с тем, тренажер Смита имеет свои преимущества.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 140)
                                    
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
                                Text("Возьмите гантели и лягте на горизонтальную скамью. Выпрямите руки, чтобы они были перпендикулярны корпусу, ладони направьте друг к другу.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 100)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("На вдохе, сохраняя плечи неподвижными, медленно опустите гантели до ушей. Локти смотрят вперёд.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 90)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("На выдохе, напрягая трицепс, поднимите гантели в исходное положение. Во время выполнения упражнения работают только предплечья.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 100)
                                        
                                    )
                                    .padding(.horizontal,36)
                                    .padding(.vertical, 1)
                                
                               
                            }
                        }
                    }
                }
            }
            .navigationTitle("Трицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct francezhimgan_Previews: PreviewProvider {
    static var previews: some View {
        francezhimgan()
    }
}
