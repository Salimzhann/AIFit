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
                        VStack{
                            Image("shragiExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            Text("Шраги с гантелями")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 100)
                                .padding(.bottom,1)
                            Text("Шраги с гантелями качают середину и верх трапеций. Упражнение формирует, поднимает и выделяет трапеции.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 80)
                                    
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
                                Text("Станьте ровно и поднимите в руки тяжелые гантели. Подвиньте ноги немного уже ширины плеч, выровняйте ноги, но не максимально (не до задержки в суставах чашечек).")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 120)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                Text("Гантели вольно свисают на выпрямленных руках с боку бедер. Немного подвиньте их вперед и слегка разверните ладони внутрь (к фронтальной стороне бедер). Выпрямите туловище, поднимите голову до горизонтального положения, выпрямите грудную клетку и уведите плечи назад. В исходном положении позвоночник ровный, немного прогнут в пояснице, руки и плечи почти расслаблены, но не полностью, иначе дельты рефлексивно выдвинутся вперед и опустятся.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 320)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.bottom,10)
                                
                                Text("Вдохните и, остановив дыхание, напрягите трапеции, возведите. Поднимайте плечи точно вверх, не допускайте выдвигание плеч вперед и не сгибайте локти. Вообразите, что руки — превратились в канаты, к окончаниям которых присоединены гантели, и ваше задание поднять их исключительно напряжением трапеций.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 220)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.bottom,20)
                                Text("Подняв плечи предельно вверх, сделайте выдох, еще больше напрягите трапеции и попытайтесь закрепить это положение на пару секунд. Медленно опустите плечи и возвратитесь в исходную позицию. Снизу сделайте небольшую паузу, сделайте вдохи начинайте следующее повторение.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 200)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.bottom,40)
                            }
                        }
                    }
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
