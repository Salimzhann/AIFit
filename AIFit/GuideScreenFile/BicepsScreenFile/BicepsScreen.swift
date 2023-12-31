//
//  BicepsScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct BicepsScreen: View {
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
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: ZottmanScreen(), label: {
                                    ZStack{
                                        Image("zottman")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear,.clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Сгибание Зоттмана")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: MolotScreen(),label: {
                                    ZStack{
                                        Image("molot")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.9)
                                        LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Сгибание 'Молот' ")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: SgipshScreen(),label: {
                                    ZStack{
                                        Image("sgipsh")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Сгибание рук со штангой")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: SgipBlockScreen(),label: {
                                    ZStack{
                                        Image("sgipblock")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Сгибание рук\n в блоке")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: SgipSidyaScreen(),label: {
                                    ZStack{
                                        Image("sgipsidya")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Сгибание рук с гантелями сидя")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: sgipBlok(),label: {
                                    ZStack{
                                        Image("sgipblok")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Cгибание рук в нижнем блоке")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: sgipSkot(),label: {
                                    ZStack{
                                        Image("sgipskot")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Работа со штангой \nна скамье Скотта")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            Spacer()
                        }
                        .padding(.vertical, 20)
                        .padding(.horizontal,16)
                }
            }
            .navigationTitle("Бицепсы")
            .toolbarBackground(
                Color.black, for: .navigationBar)
        }
    }
}

struct BicepsScreen_Previews: PreviewProvider {
    static var previews: some View {
        BicepsScreen()
    }
}
