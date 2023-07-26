//
//  PulspinScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct PulspinScreen: View {
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
                            Image("pulspinExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 246)
                            Text("Пуловер на блоке с веревкой стоя")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .padding(.bottom,1)
                            Text("Пуловер на верхнем блоке в положении стоя – это упражнение, способствующее развитию широчайших мышц спины по всей длине. Дополнительно при выполнении задействуются зубчатые и совсем немного низ грудных мышц.")
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
                                Text("Примите исходное положение лицом к блочному тренажеру, внимательно следите, чтобы верхняя часть блока оказалась непосредственно у вас над головой. ")
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
                                Text("Предварительно повесьте на блок прямую рукоять для удобства выполнения упражнения, вообще не принципиально, какой гриф вы будете использовать.Возьмитесь за рукоять хватом сверху, который соответствует ширине ваших плеч. Держа прогиб в пояснице и прямую спину, отступите от тренажера примерно на полшага. ")
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
                                Text("Чтобы акцентировать нагрузку именно на нижних отделах широчайших мышц, важно подобрать необходимую дистанцию от тренажера. Если расположиться слишком близко, нагрузка начнет переноситься на трицепсы. Слишком далекое расположение не даст возможности правильно прочувствовать сокращение широчайших мышц спины. ")
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
                                Text("Для того чтобы максимально нагрузить мышцы спины, следует слегка согнутые в локтях руки выставить вперед — угол относительно оси должен составлять 20 градусов.Вернитесь в начальное положение. Затем следует приподнять отягощение с блока. Если у вас большой рост, то встаньте на колени для принятия исходного положения.")
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
                                Text("При выполнении пуловера на блоке очень важно прогнуться в пояснице и держать спину максимально прямой. Направьте вверх свой взгляд, чтобы удерживать необходимый угол наклона корпуса.Перед тем, как начать движения, как можно глубже вдохните. Обязательно напрягите широчайшие мышцы спины.Теперь делайте выдох, плавную тягу. При этом руки не нужно сгибать, они должны оставаться прямыми.")
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

struct PulspinScreen_Previews: PreviewProvider {
    static var previews: some View {
        PulspinScreen()
    }
}
