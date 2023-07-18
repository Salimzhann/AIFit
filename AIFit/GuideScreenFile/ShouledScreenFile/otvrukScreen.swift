//
//  otvrukScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct otvrukScreen: View {
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
                            Image("otvrukExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            Text("Отведение рук в сторону в блоке")
                                .foregroundColor(.white)
                                .font(.system(size: 21))
                                .bold()
                                .padding(.trailing, 10)
                                .padding(.bottom,1)
                            Text("При соблюдении правильной техники выполнения упражнения «Отведение руки в сторону на нижнем блоке» работают следующие группы мышц: Плечи, а также задействуются вспомогательные мышцы: Предплечья")
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
                                Text("Встаньте правым боком к тренажёру. Левой рукой возьмите ручку нижнего блока ладонью вниз. Рука опущена перед корпусом. Для равновесия правой рукой держитесь за тренажёр.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 120)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.vertical, 1)
                                
                                Text("Спина прямая, ноги на ширине плеч. Это исходное положение.На выдохе поднимайте левую руку до уровня плеча.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 100)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.vertical, 5)
                                
                                Text("На секунду задержитесь в верхней точке и на вдохе медленно опустите в исходное положение.Повторите необходимое количество раз и поменяйте руку.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 120)
                                        
                                    )
                                    .padding(.horizontal,30)
                                    .padding(.vertical, 5)
                            }
                            .padding(.horizontal,10)
                            .padding(.top,1)
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                        
                        
                    }
                }
            .navigationTitle("Плечи")
            .foregroundColor(.white)
        }
    }
}

struct otvrukScreen_Previews: PreviewProvider {
    static var previews: some View {
        otvrukScreen()
    }
}
