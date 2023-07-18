//
//  ZottmanScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct ZottmanScreen: View {
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
                            Image("zottmanExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 406)
                            Text("Сгибание Зоттмана")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 100)
                                .padding(.bottom,1)
                            Text("Сгибания Зоттмана – упражнение с гантелями для бицепсов и предплечий, изобретенное еще в XIX веке силачом из Филадельфии Джорджем Зоттманом. По этой причине оно нередко причисляется к раритетным и применяется не так уж часто. А зря, ведь это отличное упражнение, особенно для развития предплечий силы рук и хвата.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 240)
                                    
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
                            VStack(spacing: 30){
                                Text("Исходное положение – стоя. Встаньте прямо, спина ровная, ноги на ширине плеч, торс в статическом напряжении. Ноги можно для удобства немного согнуть в коленях. Возьмите гантели обратным хватом (ладони от себя) или нейтральным (ладони друг к другу), если хотите добавить супинацию (поворот) кисти.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.top, 1)
                                Text("Сделайте вдох, затем, на выдохе поднимайте гантели в верхнюю точку, как в привычном подъеме гантелей на бицепс, сгибая руки в локтях. В момент подъема делайте супинацию, упомянутую выше, если изначально взяли гантели нейтральным хватом. В верхней точке, ощущая сокращение бицепса, задержитесь на пару секунд.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)

                                Text("В это время поверните кисть на 180°, так, чтобы в итоге удерживать гантель не обратным, а прямым хватом.Медленно возвращайте гантель вниз. Достигнув нижней точки, поверните запястье, чтобы вернуться к обратному или нейтральному хвату. Локти в нижней точке остаются слегка согнутыми. Сделайте запланированное количество повторений.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 230)
                                        
                                    )
                                    .padding(.horizontal,40)

                            }
                        }
                    }
                }
            }
            .navigationTitle("Бицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct ZottmanScreen_Previews: PreviewProvider {
    static var previews: some View {
        ZottmanScreen()
    }
}
