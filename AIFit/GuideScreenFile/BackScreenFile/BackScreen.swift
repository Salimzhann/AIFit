//
//  BackScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 22.06.2023.
//

import SwiftUI

struct BackScreen: View {
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
                                NavigationLink(destination: PodtyagivanieScreen(), label: {
                                    ZStack{
                                        Image("podtyagivanie")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear,.clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Подтягивание широким хватом")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: PulspinScreen(),label: {
                                    ZStack{
                                        Image("pulspin")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.9)
                                        LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Пуловер на блоке")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: TyagaSpinScreen(),label: {
                                    ZStack{
                                        Image("tyagaspin")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Тяга штанги\n в наклоне")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: shragiScreen(),label: {
                                    ZStack{
                                        Image("shragi")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Шраги с гантелями")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: tyagaHighBlockScreen(),label: {
                                    ZStack{
                                        Image("tyagahigh")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Тяга в нижнем \nблоке узкий хват")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: tyagagan(),label: {
                                    ZStack{
                                        Image("tyagagan")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Tяга гантелей в наклоне")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: shragaZad(),label: {
                                    ZStack{
                                        Image("shragazad")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Шрага со штангой за спиной")
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
            .navigationTitle("Спина")
            .toolbarBackground(
                Color.black, for: .navigationBar)
        }
    }
}

struct BackScreen_Previews: PreviewProvider {
    static var previews: some View {
        BackScreen()
    }
}
