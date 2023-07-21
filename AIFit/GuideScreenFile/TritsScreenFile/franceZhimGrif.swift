//
//  franceZhimGrif.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct franceZhimGrif: View {
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
                        Image("francezhimgrifExample")
                            .resizable()
                            .cornerRadius(12)
                            .padding(.horizontal,16)
                            .frame(width: 406, height: 236)
                        Text("Французский жим лёжа \n        с кривым грифом")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.horizontal)
                            .padding(.bottom,1)
                        Text("Французский жим лёжа с кривым \nгрифом — это изолированное упражнение для трицепса, которое можно выполнять двумя хватами: широким и узим. Широким хват воздействует на все три пучка трицепса \nс небольшим акцентом на внешнюю сторону. Кривой гриф позволяет \nудобнее держать штангу, выполняя это упражнение.")
                            .padding(.horizontal,16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.white, lineWidth: 1)
                                    .frame(width: 350, height: 230)
                                
                            )
                            .padding(.horizontal,16)
                            .padding(.vertical, 1)
                            .foregroundColor(.white)
                        Text("\nТехника выполнения")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.trailing, 90)
                            .padding(.bottom,1)
                        VStack(spacing: 30){
                            Text("Возьмите гриф с весом и сядьте на горизонтальную скамью, положив его к себе на ноги поближе к поясу. Лягте на скамью и закиньте штангу вверх выпрямив руки.")
                                .padding(.horizontal,16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 120)
                                    
                                )
                                .padding(.horizontal,16)
                                .padding(.vertical, 1)
                            
                            Text("Если вы выполняете французский жим с большим весом, то попросите \nнапарника подать его. Ноги расставьте \nна ширине плеч, руки прямые, в \nпояснице прогиб. Держите штангу на уровне дельт.")
                                .padding(.horizontal,16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 150)
                                    
                                )
                                .padding(.horizontal,16)
                                .padding(.vertical, 1)
                            
                            Text("Согните руки в локтях до касания \nштанги головы. Вместе с выдохом выпрямите их полностью и напрягите трицепс.Руки немного сдвиньте к голове в плечах.")
                                .padding(.horizontal,16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 120)
                                    
                                )
                                .padding(.horizontal,16)
                                .padding(.vertical, 1)
                        }
                    }.padding(.horizontal,16)
                }
            }
            .navigationTitle("Трицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct franceZhimGrif_Previews: PreviewProvider {
    static var previews: some View {
        franceZhimGrif()
    }
}
