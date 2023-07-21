//
//  ShoulderScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 21.06.2023.
//

import SwiftUI

struct ShoulderScreen: View {
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
                                NavigationLink(destination: jimganScreen(), label: {
                                    ZStack{
                                        Image("sh")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear,.clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Жим гантелей \nсидя")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }.padding()
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: arnoldScreen(),label: {
                                    ZStack{
                                        Image("arnold")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.9)
                                        LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Жим Арнольда")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }.padding()
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: mahiScreen(),label: {
                                    ZStack{
                                        Image("mahi")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Махи гантелями в стороны")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }.padding()
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: tyagashScreen(),label: {
                                    ZStack{
                                        Image("tyagash")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Тяга штанги к подбородку")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }.padding()
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: otvrukScreen(),label: {
                                    ZStack{
                                        Image("otvruk")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Отведение рук в сторону в блоке")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }.padding()
                                    }
                                })
                            })
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: armZhim(),label: {
                                    ZStack{
                                        Image("armzhim")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Aрмейский жим")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }.padding()
                                    }
                                })
                            })
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: mahiVpered(),label: {
                                    ZStack{
                                        Image("mahivperedExample")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Mахи гантелями перед собой")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }.padding()
                                    }
                                })
                            })
                            Spacer()
                        }
                        .padding(.vertical, 20)
                        .padding(.horizontal,16)
                }
            }
            .navigationTitle("Плечи")
            .toolbarBackground(
                Color.black, for: .navigationBar)
        }
    }
}

struct ShoulderScreen_Previews: PreviewProvider {
    static var previews: some View {
        ShoulderScreen()
    }
}
