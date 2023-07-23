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
                            .frame(height: 286)
                        Text("Работа со штангой на скамье Скотта")
                            .foregroundColor(.white)
                            .font(.system(size: 19))
                            .bold()
                            .padding(.bottom,1)
                        Text("Это упражнение позволяет максимально изолировать нагрузку на бицепс и, как правило, используется для оттачивания его формы и рельефа.")
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
                            Text("Выполнять упражнение можно как сидя, так и стоя. Главное — отрегулируйте высоту пюпитра (наклонной подставки для верхней части рук) так, чтобы при подъеме штанги туловище было всегда выпрямленным, а торс находился в вертикальном и устойчивом положении.")
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
                            Text("Возьмите EZ-штангу (ее гриф напоминает букву «W») или гантель хватом снизу. Сядьте в скамью Скотта и плотно прижмите верхнюю часть рук (трицепсы) к пюпитру. Опустите штангу и чуть-чуть согните руки в локтях. Локти располагаются на пюпитре, ближе к нижнему краю и должны всегда оставаться неподвижными.")
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
                            Text("Сделайте глубокий вдох и задержите дыхание. Напрягите бицепсы и поднимите штангу вверх. Как только предплечья примут вертикальное положение, сделайте выдох, остановитесь на мгновение и еще сильнее напрягите бицепсы.")
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
                            Text("Плавно опускайте штангу до тех пор, пока руки почти полностью выпрямятся.Сделайте небольшую паузу и приступайте к следующему повторению")
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

struct sgipSkot_Previews: PreviewProvider {
    static var previews: some View {
        sgipSkot()
    }
}
