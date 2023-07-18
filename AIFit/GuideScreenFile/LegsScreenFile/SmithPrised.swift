//
//  SmithPrised.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct SmithPrised: View {
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
                            Image("smithprisedExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 256)
                            Text("Приседание в тренажере Смита")
                                .foregroundColor(.white)
                                .font(.system(size: 21))
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
                                Text("Подсядьте под гриф в тренажере Смита, упритесь в него верхней частью трапеций, обхватите гриф хватом сверху, освободите замки и выпрямитесь. Поставьте ступни на ширине плеч и выдвиньте их вперед так, чтобы носки больших пальцев ног «вылазили» на 20-25 см за линию бедер.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Спина слегка прогнута в пояснице и перпендикулярна полу (плечи расположены строго над бедрами).Сделайте глубокий вдох и, задержав дыхание, присядьте, отводя таз назад — представьте, что садитесь на стул. Опускайтесь до тех пор, пока бедра станут параллельны полу.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Достигнув нижнюю точку, не пружиньте ногами, а, по-прежнему задерживая дыхание, напрягите бедра и плавно, без рывка, измените направление движения и выжмите себя вверх.Преодолев самый сложный участок, выдохните.")
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
            .navigationTitle("Ноги")
            .foregroundColor(.white)
            
        }
    }
}

struct SmithPrised_Previews: PreviewProvider {
    static var previews: some View {
        SmithPrised()
    }
}
