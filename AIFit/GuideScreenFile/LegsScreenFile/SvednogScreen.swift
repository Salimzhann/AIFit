//
//  SvednogScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct SvednogScreen: View {
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
                            Image("svednogExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 256)
                            Text("Cведение ног сидя")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .bold()
                                .padding(.trailing,150)
                                .padding(.bottom,1)
                            Text("Сведение ног сидя в тренажере является популярным упражнением для нижней части тела. Его часто включают в комплексную программу тренировок нижней части тела, вместе с базовыми упражнениями. Сведения позволяют изолированно нагрузить мышцы внутренней поверхности бедра.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 190)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 2)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                            VStack(spacing: 30){
                                Text("Перед выполнением упражнения убедитесь в том, что вес вашего тела приходится на седалищные кости. Расправьте грудь, поместите ноги за специальные мягкие упоры и максимально широко разведите их. Руками возьмитесь за рукоятки. Теперь можно приступить к основной части упражнения.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 220)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("На вдохе напрягите пресс и сведите ноги вместе. Ненадолго задержитесь в положении максимального напряжения.Медленно вернитесь в начальное положение и выдохните.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 130)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Упражнение подходит для любого уровня физической подготовки. Ориентируясь на свои ощущения, выполните от 10 до 15 повторений. Отдохните в течение 30 секунд. В это время желательно встать и немного размять ноги. Повторите сведение ещё 1–2 подхода.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Ноги")
            .foregroundColor(.white)
            
        }
    }
}

struct SvednogScreen_Previews: PreviewProvider {
    static var previews: some View {
        SvednogScreen()
    }
}
