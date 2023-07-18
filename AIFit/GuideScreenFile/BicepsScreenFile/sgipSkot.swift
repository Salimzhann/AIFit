//
//  sgipSkot.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct sgipSkot: View {
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
                            Image("sgipskotExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 356)
                            Text("Работа со штангой на скамье Скотта")
                                .foregroundColor(.white)
                                .font(.system(size: 19))
                                .bold()
                                .padding(.trailing,1)
                                .padding(.bottom,1)
                            Text("Это упражнение позволяет максимально изолировать нагрузку на бицепс и, как правило, используется для оттачивания его формы и рельефа.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 100)
                                    
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
                                Text("Выполнять упражнение можно как сидя, так и стоя. Главное — отрегулируйте высоту пюпитра (наклонной подставки для верхней части рук) так, чтобы при подъеме штанги туловище было всегда выпрямленным, а торс находился в вертикальном и устойчивом положении.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 170)
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.top, 1)
                                    .padding(.bottom,5)
                                Text("Возьмите EZ-штангу (ее гриф напоминает букву «W») или гантель хватом снизу. Сядьте в скамью Скотта и плотно прижмите верхнюю часть рук (трицепсы) к пюпитру. Опустите штангу и чуть-чуть согните руки в локтях. Локти располагаются на пюпитре, ближе к нижнему краю и должны всегда оставаться неподвижными.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.top, 1)
                                    .padding(.bottom,5)
                                Text("Сделайте глубокий вдох и задержите дыхание. Напрягите бицепсы и поднимите штангу вверх. Как только предплечья примут вертикальное положение, сделайте выдох, остановитесь на мгновение и еще сильнее напрягите бицепсы.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 170)
                                    )
                                    .padding(.horizontal,32)
                                    .padding(.top, 1)
                                    .padding(.bottom,5)
                                Text("Плавно опускайте штангу до тех пор, пока руки почти полностью выпрямятся.Сделайте небольшую паузу и приступайте к следующему повторению")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 120)
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.top, 1)
                                    .padding(.bottom,5)
                            }
                        }
                    }
                }
            .navigationTitle("Бицепсы")
            .foregroundColor(.white)
        }
    }
}

struct sgipSkot_Previews: PreviewProvider {
    static var previews: some View {
        sgipSkot()
    }
}
