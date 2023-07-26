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
                                .frame(height: 256)
                                Text("Жим штанги лежа")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            Text("Жим лежа — это базовое силовое упражнение. Пришедший из пауэрлифтинга жим на скамье завоевал популярность и любовь посетителей спортивных залов по всему миру. Упражнение стандартное, и поэтому техника его выполнения кажется простой. Но это только на первый взгляд.")
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
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                            VStack(spacing: 10){
                                Text("Отведите лопатки назад, грудь расправьте вперед.Возьмите штангу хватом сверху, положив большие пальцы на внешнюю сторону сжатого кулака. Ваши руки должны быть немного шире, чем ширина плеч, а угол между плечами быть около 45 градусов по отношению к телу.")
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
                                Text("Вдохните, опуская штангу к груди, до линии сосков или чуть ниже. Следите за тем, чтобы лопатки были сведены.Выдохните, нажимая на гриф над грудью, выпрямляйте руки. На этом этапе важно не отрывать голову от скамьи.")
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
                                Text("Не смотрите на стойку, смотрите перед собой.Когда штанга окажется перед глазами, зафиксируйте ее в этой точке на мгновение. Это будет исходным положением для следующего повтора.")
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
