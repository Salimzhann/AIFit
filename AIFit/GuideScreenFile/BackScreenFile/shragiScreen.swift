//
//  shragiScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct shragiScreen: View {
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
                            Image("shragiExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 286)
                            Text("Шраги с гантелями")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            Text("Шраги с гантелями качают середину и верх трапеций. Упражнение формирует, поднимает и выделяет трапеции.")
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
                                Text("Станьте ровно и поднимите в руки тяжелые гантели. Подвиньте ноги немного уже ширины плеч, выровняйте ноги, но не максимально (не до задержки в суставах чашечек).")
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
                                Text("Гантели вольно свисают на выпрямленных руках с боку бедер. Немного подвиньте их вперед и слегка разверните ладони внутрь (к фронтальной стороне бедер). Выпрямите туловище, поднимите голову до горизонтального положения, выпрямите грудную клетку и уведите плечи назад. В исходном положении позвоночник ровный, немного прогнут в пояснице, руки и плечи почти расслаблены, но не полностью, иначе дельты рефлексивно выдвинутся вперед и опустятся.")
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
                                Text("Вдохните и, остановив дыхание, напрягите трапеции, возведите. Поднимайте плечи точно вверх, не допускайте выдвигание плеч вперед и не сгибайте локти. Вообразите, что руки — превратились в канаты, к окончаниям которых присоединены гантели, и ваше задание поднять их исключительно напряжением трапеций.")
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
                                Text("Подняв плечи предельно вверх, сделайте выдох, еще больше напрягите трапеции и попытайтесь закрепить это положение на пару секунд. Медленно опустите плечи и возвратитесь в исходную позицию. Снизу сделайте небольшую паузу, сделайте вдохи начинайте следующее повторение.")
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
            .navigationTitle("Спина")
            .foregroundColor(.white)
            
        }
    }
}

struct shragiScreen_Previews: PreviewProvider {
    static var previews: some View {
        shragiScreen()
    }
}
