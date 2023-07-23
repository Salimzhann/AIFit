//
//  armZhim.swift
//  AIFit
//
//  Created by Manas Salimzhan on 12.07.2023.
//

import SwiftUI

struct armZhim: View {
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
                            Image("armzhimExample")
                                .resizable()
                                .cornerRadius(12)
                                .frame(height: 300)
                            Text("Aрмейский жим")
                                .foregroundColor(.white)
                                .font(.system(size: 21))
                                .bold()
                                .padding(.bottom,1)
                            Text("Армейский жим — это базовое силовое упражнение, в котором атлет выжимает снаряд с груди вверх до полного распрямления рук, а затем опускает обратно. Как правило, под этим термином подразумевают подъём штанги стоя, но, поскольку определение не чёткое, армейским также могут называть жим с груди сидя и аналогичное движение с гантелями.")
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
                            VStack(spacing: 15){
                                Text("Поднимите штангу вверх. Когда она проходит мимо лица, чуть отведите голову назад, вжимая подбородок в себя. Это нужно для того, чтобы штанга следовала строго вверх, а не вперёд. Движение по такой траектории облегчит упражнение и не перегрузит поясницу.")
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
                                Text("Как только гриф миновал голову, сдвиньте шею вперёд, под штангу, чтобы в верхней точке он находился за головой, на одной линии с вашими плечами, лопатками и тазом. Выпрямите руки и заблокируйте локти.")
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
                                Text("После этого опустите штангу обратно на грудь, снова отведя шею назад. Не позволяйте грифу уходить вперёд, чтобы не перегрузить поясницу.Положите штангу на грудь и без паузы повторите движение сначала. Следите, чтобы баланс всегда оставался на середине стопы, а не сдвигался на носки или пятки.")
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
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                    }
                }
            .navigationTitle("Плечи")
            .foregroundColor(.white)
        }
    }
}

struct armZhim_Previews: PreviewProvider {
    static var previews: some View {
        armZhim()
    }
}
