//
//  ChestScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 20.06.2023.
//

import SwiftUI

struct ChestScreen: View {
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
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: HammScreen(), label: {
                                    ZStack{
                                        Image("hamm")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear,.clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Жим в рычажном тренажере")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                            Spacer()
                                        }.padding(.leading,36)
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: SwendScreen(),label: {
                                    ZStack{
                                        Image("swend")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Жим Свенда")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                                .padding(.trailing,43)
                                            Spacer()
                                        }.padding(.leading,36)
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: svrukScreen(),label: {
                                    ZStack{
                                        Image("svruk")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Сведение рук в тренажере")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                                .padding(.trailing,43)
                                            Spacer()
                                        }.padding(.leading,36)
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: jimlezhaScreen(),label: {
                                    ZStack{
                                        Image("jimlezha")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Жим штанги лежа")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                                .padding(.trailing,43)
                                            Spacer()
                                        }.padding(.leading,36)
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: pushupScreen(),label: {
                                    ZStack{
                                        Image("pushup")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Отжимание")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                                .padding(.trailing,80)
                                            Spacer()
                                        }.padding(.leading,36)
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: brusia(),label: {
                                    ZStack{
                                        Image("brusia")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Отжимание на брусьях")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                                .padding(.trailing,43)
                                            Spacer()
                                        }.padding(.leading,36)
                                    }
                                })
                            })
                            
                            Button(action: {
                            }, label: {
                                NavigationLink(destination: shimSkam(),label: {
                                    ZStack{
                                        Image("zhimskam")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Жим гантелей на наклонной скамье")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                                .padding(.trailing,1)
                                            Spacer()
                                        }.padding(.leading,36)
                                    }
                                })
                            })
                            Spacer()
                        }
                        .padding(.vertical, 20)
                    }
                }
            }
            .navigationTitle("Грудные упражнения")
            .toolbarBackground(
                Color.black, for: .navigationBar)
        }
    }
}

struct ChestScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChestScreen()
    }
}
