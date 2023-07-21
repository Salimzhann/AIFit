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
                        Image("razgipvnExample")
                            .resizable()
                            .cornerRadius(12)
                            .padding(.horizontal,16)
                            .padding(.horizontal,5)
                            .frame(width: 406, height: 256)
                        Text("Pазгибание рук в наклоне")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .bold()
                            .padding(.trailing,40)
                            .padding(.bottom,1)
                        Text("Разгибание рук с гантелями назад ‒ одно\nиз лучших упражнений для трицепса.\nОно позволяет эффективно проработать упомянутую мышцу,добавить \nобъема рукам и подчеркнуть рельеф.\nДевушки могут использовать это упражнение для улучшения формы и\nизбавления от дряблости с задней стороны рук.")
                            .padding(.horizontal,16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.white, lineWidth: 1)
                                    .frame(width: 350, height: 210)
                                
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
                            Text("Встаньте одним коленом на скамью.\nВозьмитесь рукой за скамью с той же стороны для поддержки тела и равновесия.Немного наклонитесь \nвперёд, ‒ так, чтобы корпус был \nпараллелен полу. Позвоночник должен \nбыть прямым. Шея выравнивается по уровню спины. Взгляд направлен вперёд. Живот втянут, мышцы пресса напряжены.")
                                .padding(.horizontal,16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 230)
                                        .padding(.horizontal,16)
                                )
                                .padding(.horizontal,19)
                                .padding(.vertical, 1)
                            
                            Text("Вторую ногу поставьте на пол для опоры.\nГантель возьмите в свободную руку и согните локоть под прямым углом. Это исходное положение.Поднимите \nсогнутый локоть до такого уровня, \nчтобы плечо было параллельно полу. Предплечье с гантелью при этом \nнаправлено вниз. Сделайте вдох.")
                                .padding(.horizontal,16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 190)
                                        .padding(.horizontal,16)
                                )
                                .padding(.horizontal,16)
                                .padding(.vertical, 1)
                            Text("Выдыхая, разгибайте локоть строго\nназад, пока рука не будет полностью прямой. Трицепс в этот момент должен \nбыть максимально напряжен, а\n положение плеча зафиксировано.\nНесколько мгновений удерживайте\n гантель в прямой руке.На вдохе плавно верните руку в исходное положение.")
                                .padding(.horizontal,16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 190)
                                        .padding(.horizontal,16)
                                )
                                .padding(.horizontal,16)
                                .padding(.vertical, 1)
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
