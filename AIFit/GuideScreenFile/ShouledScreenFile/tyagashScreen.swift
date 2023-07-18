//
//  tyagashScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct tyagashScreen: View {
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
                            Image("tyagashExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            Text("Тяга штанги к подбородку")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 20)
                                .padding(.bottom,1)
                            Text("Тяга к подбородку прорисовывает и оттачивает форму трапеций, очерчивает четкую разделительную линию между трапециями и средними дельтами, улучшает детализацию и «полосатость» трапеций.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 140)
                                    
                                )
                                .padding(.horizontal,40)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            
                            VStack(spacing: 15){
                                Text("Возьмите штангу хватом сверху и станьте ровно.В исходной позиции спина выпрямлена и слегка прогнута в пояснице, грудь «колесом», плечи расправлены, руки выпрямлены в локтях, гриф штанги касается бедер.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 140)
                                        
                                    )
                                    .padding(.horizontal,20)
                                    .padding(.top, 1)
                                
                                Text("Сделайте вдох и, задержав дыхание, напрягите трапеции и дельты. Разводя локти, потяните их вертикально вверх. Движение «ведут» именно локти, а не плечи или предплечья.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 120)
                                        
                                    )
                                    .padding(.horizontal,20)
                                    .padding(.vertical, 5)
                                
                                Text("Когда вы тянете локти вверх, гриф штанги должен скользить в вертикальной плоскости вдоль тела от бедер до подбородка. Не нависайте над грифом, выгибая спину дугой. Держите корпус и шею ровно, а подбородок — горизонтально.В верхней точке локти подняты максимально вверх (однозначно выше плеч), а верхняя часть рук на 30° выше горизонтали")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 250)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.vertical, 5)
                                   
                                Text("Достигнув верхнюю точку, выдохните, сделайте паузу и еще сильнее напрягите трапеции и дельты.Плавно опустите штангу в исходное положение.Темп выполнения упражнения — подчеркнуто плавный.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 140)
                                        
                                    )
                                    .padding(.horizontal,20)
                                    .padding(.vertical, 5)
                                   
                            }
                            .padding(.horizontal,20)
                            .padding(.top,1)
                        }
                }
            }
            .navigationTitle("Плечи")
            .foregroundColor(.white)
        }
    }
}

struct tyagashScreen_Previews: PreviewProvider {
    static var previews: some View {
        tyagashScreen()
    }
}
