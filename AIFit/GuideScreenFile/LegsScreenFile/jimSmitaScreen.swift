//
//  jimSmitaScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct jimSmitaScreen: View {
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
                            Image("jimnogExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 286)
                            Text("Приседание в тренажере смита")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .padding(.bottom,1)
                            Text("Конечно, приседания в тренажере Смита несколько уступают традиционным приседаниям со штангой в деле построения массивных бедер. Но вместе с тем, тренажер Смита имеет свои преимущества. Первое — безопасность. Здесь практически не нужно заботиться о поддержании тела в равновесии во время движения. Второе — тренажер Смита позволяет гораздо отчетливее направить фокус нагрузки на квадрицепсы, в особенности на их нижнюю часть.")
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
                                Text("Подсядьте под гриф в тренажере Смита, упритесь в него верхней частью трапеций, обхватите гриф хватом сверху, освободите замки и выпрямитесь. Поставьте ступни на ширине плеч и выдвиньте их вперед так, чтобы носки больших пальцев ног «вылазили» на 20-25 см за линию бедер.")
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
                                Text("Если вы делаете жим ногами на горизонтальном тренажёре, просто поставьте нужный вес на блоках, сядьте в кресло и возьмитесь за рукоятки, чтобы плотнее прижать тело к сиденью.")
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
                                Text("Спина слегка прогнута в пояснице и перпендикулярна полу (плечи расположены строго над бедрами).Сделайте глубокий вдох и, задержав дыхание, присядьте, отводя таз назад — представьте, что садитесь на стул. Опускайтесь до тех пор, пока бедра станут параллельны полу.")
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
                                Text("Достигнув нижнюю точку, не пружиньте ногами, а, по-прежнему задерживая дыхание, напрягите бедра и плавно, без рывка, измените направление движения и выжмите себя вверх.Преодолев самый сложный участок, выдохните.На протяжении всего движения смотрите строго вперед, крепко держите правильный, S-образный изгиб позвоночника и ни в коем случае не отрывайте пятки от пола. Представьте, что они намертво приклеены к полу.")
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

struct jimSmitaScreen_Previews: PreviewProvider {
    static var previews: some View {
        jimSmitaScreen()
    }
}
