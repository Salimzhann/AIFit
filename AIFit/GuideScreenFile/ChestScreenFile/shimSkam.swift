//
//  shimSkam.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct shimSkam: View {
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
                        Image("zhimskamExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 266)
                        Text("Жим гантелей на наклонной скамье")
                            .foregroundColor(.white)
                            .font(.system(size: 19))
                            .bold()
                            .padding(.bottom,1)
                        Text("Наклонный жим гантелей можно отнести в категорию лучших базовых упражнений для эффективной накачки грудных мышц и развития колоссальной силы.")
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
                            Text("Выставьте наклонную скамью под углом в 30 градусов: это необходимо, чтобы на 100% задействовать мышечные волокна груди.Примите исходное положение и расположитесь на заранее подготовленной скамье. Выполняя негативную фазу с гантелями, необходимо следить, чтобы руки двигались параллельно на протяжении всего движения. ")
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
                            Text("Достигнув глубины негативной фазы, вы почувствуете более глубокую растяжку грудных мышц, чем при работе со штангой. Дополнительно в работу вовлекаются мышцы-стабилизаторы, которые спят, когда движение выполняется с грифом. ")
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
                            Text("Задержавшись на пару секунд в нижней точке и получив максимальную растяжку груди, выдохните и подконтрольным движением верните гантели в исходное положение. Локти держите развернутыми и направленными в сторону ушей: это даст возможность качественно нагрузить мышечные волокна по всей плоскости груди. ")
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
                                )                        }
                    }.padding(.horizontal,16)
                        .padding(.vertical,20)
                }
            }
            .navigationTitle("Грудные Упражнения")
            .foregroundColor(.white)
            
        }
    }
}

struct shimSkam_Previews: PreviewProvider {
    static var previews: some View {
        shimSkam()
    }
}
