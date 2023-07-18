//
//  ObrPush.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct ObrPush: View {
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
                            Image("obrpushExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 256)
                            Text("Oбратные отжимания от скамьи")
                                .foregroundColor(.white)
                                .font(.system(size: 22))
                                .bold()
                                .padding(.trailing,10)
                                .padding(.bottom,1)
                            Text("Обратные отжимания – это силовое упражнение для трицепса, которое выполняется с весом собственного тела. Обратные отжимания является одним из самых простых и при этом самых эффективных упражнений с весом собственного тела, нацеленных на мышцы трицепса.")
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
                                Text("Расположите руки на ширине плеч на спортивной скамье или устойчивом стуле. Подвиньтесь поближе к скамье, локти должны находиться как можно ближе к телу. Вытяните ноги в длину перед собой, немного согните в коленях, пятки упираются в пол. Выпрямленные руки также слегка согните в локтях, чтобы не повредить суставы")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 230)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("На вдохе медленно согните локти, чтобы опустить свое тело к полу, пока плечо и предплечье не образуют угол 90 градусов. Обязательно держите спину близко к скамейке, спина прямая. В нижней части движения задержитесь на 3-5 секунд.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 170)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                Text("На выдохе, оттолкнувшись от скамьи, выпрямите локти и вернитесь в исходное положение.На протяжении всего упражнения держите спину ровной, не сутультесь. старайтесь опускать плечи, не подтягивайте их к ушам, когда опускаете и поднимаете тело.")
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
            .navigationTitle("Трицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct ObrPush_Previews: PreviewProvider {
    static var previews: some View {
        ObrPush()
    }
}
