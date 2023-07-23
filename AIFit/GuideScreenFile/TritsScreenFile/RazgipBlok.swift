//
//  RazgipBlok.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct RazgipBlok: View {
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
                        Image("razgipblokExample")
                            .resizable()
                            .cornerRadius(12)
                            .frame(height: 286)
                        Text("Pазгибание рук на блоке")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.bottom,1)
                        Text("Pазгибание рук на блоке - формирующее изолированное упражнение для трицепсов, которое поможет сделать руки более рельефными и сильными. Давайте разберем технику выполнения разгибаний.")
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
                            Text("Повесьте короткую прямую ручку. Возьмитесь за нее прямым хватом (ладони вниз). Большой палец сверху, а не снизу.От положения локтей зависит эффективность нагрузки – локти должны быть прижаты к корпусу. Согните руки чуть больше, чем на 90 градусов.")
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
                            Text("Положение стоп может быть либо на одной прямой, либо одна нога чуть вперед, а другая чуть назад. Ваша задача – встать максимально устойчиво. Стопы расставлены уже плеч, расстояние между ними 15–20 см, если вы поставили их на одной прямой. В том случае, когда одна впереди, а другая позади – это расстояние будет меньше.")
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
                            Text("Поясница выгнута, грудь расправлена, взгляд прямо. Весом тела прижимаем ручку сверху, как бы нависая над ней.Это необходимо для того, чтобы вы не держали вес широчайшими мышцами спины. Поэтому мы фиксируем тело именно таким образом. За счет того, что локти прижаты к телу, а вы нависаете над ручкой, выгнув поясницу, вы будете изолированно прокачивать только трицепсы.")
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
                            Text("Из положения «руки согнуты» опустите вес вниз усилием трицепсов. Локти не должны расходиться в стороны, они все время прижаты к корпусу.")
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
                }
            }
            .navigationTitle("Трицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct RazgipBlok_Previews: PreviewProvider {
    static var previews: some View {
        RazgipBlok()
    }
}
