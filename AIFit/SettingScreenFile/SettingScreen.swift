//
//  SettingScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 08.06.2023.
//

import SwiftUI

struct SettingScreen: View {
    init() {
           UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
       }
    var body: some View {
        NavigationView {
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(Color(uiColor: .darkGray))
                                .opacity(0.45)
                                .padding(.horizontal, 16)
                                .frame(width: 400, height: 299)
                                .foregroundColor(Color.init(uiColor: .darkGray))
                                .padding(.top,20)
                            
                            VStack (spacing: 2){
                                SettingButtons(title: "Связаться с нами", im: "house")
                                SettingButtons(title: "Оцени нас", im: "star")
                                SettingButtons(title:"Поделиться", im:  "square.and.arrow.up")
                            }
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("Настройки")
            .background(BlurView(style: .systemMaterial))
            
        }
        
    }
}


struct SettingButtons: View{
    var title: String
    var im: String
    var body: some View{
        
            ZStack{
                Button{
                    
                }label: {
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color(uiColor: .lightGray))
                        .frame(width:340, height: 70)
                        .padding(.top,20)
                        .opacity(0.45)
                    
                }
                HStack{
                    Image(systemName: im)
                        .foregroundColor(.white)
                        .padding(.top,22)
                        .padding(.leading,47)
                        .opacity(0.8)
                    
                    
                    
                    Text(title)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top,22)
                        .opacity(0.8)
                    Spacer()
                    
                }
            }
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        return blurView
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


struct SettingScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingScreen()
        
    }
}
