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
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            Text("Пуловер на блоке с веревкой стоя")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .padding(.trailing,10)
                                .padding(.bottom,1)
                            Text("Пуловер на верхнем блоке в положении стоя – это упражнение, способствующее развитию широчайших мышц спины по всей длине. Дополнительно при выполнении задействуются зубчатые и совсем немного низ грудных мышц.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 170)
                                )
                                .padding(.horizontal,40)
                                .padding(.top,1)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 80)
                                .padding(.bottom,1)
                            VStack(spacing: 20){
                                Text("Примите исходное положение лицом к блочному тренажеру, внимательно следите, чтобы верхняя часть блока оказалась непосредственно у вас над головой. ")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 130)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.bottom, 10)
                                Text("Предварительно повесьте на блок прямую рукоять для удобства выполнения упражнения, вообще не принципиально, какой гриф вы будете использовать.Возьмитесь за рукоять хватом сверху, который соответствует ширине ваших плеч. Держа прогиб в пояснице и прямую спину, отступите от тренажера примерно на полшага. ")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.bottom,10)
                                
                                Text("Чтобы акцентировать нагрузку именно на нижних отделах широчайших мышц, важно подобрать необходимую дистанцию от тренажера. Если расположиться слишком близко, нагрузка начнет переноситься на трицепсы. Слишком далекое расположение не даст возможности правильно прочувствовать сокращение широчайших мышц спины. ")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 230)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.bottom,10)
                                
                                Text("Для того чтобы максимально нагрузить мышцы спины, следует слегка согнутые в локтях руки выставить вперед — угол относительно оси должен составлять 20 градусов.Вернитесь в начальное положение. Затем следует приподнять отягощение с блока. Если у вас большой рост, то встаньте на колени для принятия исходного положения.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 220)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.bottom,20)
                                
                                Text("При выполнении пуловера на блоке очень важно прогнуться в пояснице и держать спину максимально прямой. Направьте вверх свой взгляд, чтобы удерживать необходимый угол наклона корпуса.Перед тем, как начать движения, как можно глубже вдохните. Обязательно напрягите широчайшие мышцы спины.Теперь делайте выдох, плавную тягу. При этом руки не нужно сгибать, они должны оставаться прямыми.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 280)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.bottom,40)
                            }
                    }
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
