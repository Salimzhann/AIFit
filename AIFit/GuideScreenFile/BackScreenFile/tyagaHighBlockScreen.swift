//
//  tyagaHighBlockScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct tyagaHighBlockScreen: View {
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
                            Image("tyagahighExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 306)
                            Text("Tяга горизонтального блока")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing,0)
                                .padding(.bottom,1)
                            Text("Тяга горизонтального блока — это силовое упражнение на развитие мышц спины, которое выполняется на блочном тренажёре. Его также называют тягой нижнего блока к поясу и просто тягой к животу.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 140)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 1)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing, 90)
                                .padding(.bottom,1)
                            VStack(spacing: 20){
                                Text("Прицепите V-образную рукоять на нижний блок, сядьте на лавку и прижмите ноги к платформам для стоп.С выдохом согните руки в локтях, сведите лопатки и подтяните рукоятку к животу. Зафиксируйте на одну секунду. Со вдохом плавно и под контролем верните руки в исходное положение.")
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
            .navigationTitle("Спина")
            .foregroundColor(.white)
            
        }
    }
}

struct tyagaHighBlockScreen_Previews: PreviewProvider {
    static var previews: some View {
        tyagaHighBlockScreen()
    }
}
