//
//  jimlezhaScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 21.06.2023.
//

import SwiftUI

struct jimlezhaScreen: View {
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
                            Image("jimlezhaExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                                Text("Жим штанги лежа")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 110)
                                .padding(.bottom,1)
                            Text("Жим лежа — это базовое силовое упражнение. Пришедший из пауэрлифтинга жим на скамье завоевал популярность и любовь посетителей спортивных залов по всему миру. Упражнение стандартное, и поэтому техника его выполнения кажется простой. Но это только на первый взгляд.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 220)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 10)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            VStack(spacing: 10){
                                ram(text:"Отведите лопатки назад, грудь расправьте вперед.Возьмите штангу хватом сверху, положив большие пальцы на внешнюю сторону сжатого кулака. Ваши руки должны быть немного шире, чем ширина плеч, а угол между плечами быть около 45 градусов по отношению к телу", width: 350, height: 190 )
                                    .padding(.top,1)
                                ram(text: "Снимите штангу со стойки, зафиксировав локти. Здесь очень важно не начать выполнять упражнение сразу, с неустойчивого положения.", width: 350, height: 110)
                                ram(text: "Вдохните, опуская штангу к груди, до линии сосков или чуть ниже. Следите за тем, чтобы лопатки были сведены.Выдохните, нажимая на гриф над грудью, выпрямляйте руки. На этом этапе важно не отрывать голову от скамьи.", width: 350, height: 160)
                                ram(text: "Не смотрите на стойку, смотрите перед собой.Когда штанга окажется перед глазами, зафиксируйте ее в этой точке на мгновение. Это будет исходным положением для следующего повтора.", width: 350, height: 140)
                            }
                            .padding(.top,1)
                        }
                        .padding(.vertical,20)
                        .padding(.horizontal,20)
                    }
            }
            .navigationTitle("Грудные Упражнения")
            .foregroundColor(.white)
        }
    }
}

struct jimlezhaScreen_Previews: PreviewProvider {
    static var previews: some View {
        jimlezhaScreen()
    }
}
struct ram: View{
    @State var text: String
    @State var width: CGFloat
    @State var height: CGFloat
    var body: some View{
        Text(text)
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.white, lineWidth: 1)
                    .frame(width: width, height: height)
                
            )
            .padding(.horizontal,40)
            .padding(.vertical, 10)
    }
}
