//
//  RazgipvN.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct RazgipvN: View {
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
                            Image("razgipvnExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 256)
                            Text("Pазгибание рук в наклоне")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                .bold()
                                .padding(.trailing,40)
                                .padding(.bottom,1)
                            Text("Разгибание рук с гантелями назад ‒ одно из лучших упражнений для трицепса. Оно позволяет эффективно проработать упомянутую мышцу, добавить объема рукам и подчеркнуть рельеф. Девушки могут использовать это упражнение для улучшения формы и избавления от дряблости с задней стороны рук.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 190)
                                    
                                )
                                .padding(.horizontal,35)
                                .padding(.vertical, 1)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            VStack(spacing: 30){
                                Text("Встаньте одним коленом на скамью.Возьмитесь рукой за скамью с той же стороны для поддержки тела и равновесия.Немного наклонитесь вперёд, ‒ так, чтобы корпус был параллелен полу. Позвоночник должен быть прямым. Шея выравнивается по уровню спины. Взгляд направлен вперёд. Живот втянут, мышцы пресса напряжены.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 230)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Вторую ногу поставьте на пол для опоры.Гантель возьмите в свободную руку и согните локоть под прямым углом. Это исходное положение.Поднимите согнутый локоть до такого уровня, чтобы плечо было параллельно полу. Предплечье с гантелью при этом направлено вниз. Сделайте вдох.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                Text("Выдыхая, разгибайте локоть строго назад, пока рука не будет полностью прямой. Трицепс в этот момент должен быть максимально напряжен, а положение плеча зафиксировано.Несколько мгновений удерживайте гантель в прямой руке.На вдохе плавно верните руку в исходное положение.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                            }
                        }
                        
                    }
                }
            }
            .navigationTitle("Трицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct RazgipvN_Previews: PreviewProvider {
    static var previews: some View {
        RazgipvN()
    }
}
