//
//  LegsScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct LegsScreen: View {
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
                                NavigationLink(destination: JimnogScreen(), label: {
                                    ZStack{
                                        Image("jimnog")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear,.clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Жим ногами")
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
                                NavigationLink(destination: jimSmitaScreen(),label: {
                                    ZStack{
                                        Image("ijmsmita")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Приседание в тренажере смита")
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
                                NavigationLink(destination: SvednogScreen(),label: {
                                    ZStack{
                                        Image("svednog")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Cведение ног сидя")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                                .padding(.trailing,30)
                                            Spacer()
                                        }.padding(.leading,36)
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: VypadyvpScreen(),label: {
                                    ZStack{
                                        Image("vypadyvp")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Выпады вперед")
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
                                NavigationLink(destination: noskiExample(),label: {
                                    ZStack{
                                        Image("noski")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Подъем на носки стоя")
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
                                NavigationLink(destination: Jeff(),label: {
                                    ZStack{
                                        Image("Jeff")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Приседание Джефферсона")
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
                                NavigationLink(destination: SmithPrised(),label: {
                                    ZStack{
                                        Image("smithprised")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 350, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(width: 350, height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Приседание в тренажере Смита")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                                .padding(.trailing,10)
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
            .navigationTitle("Ноги")
            .toolbarBackground(
                Color.black, for: .navigationBar)
            
        }
    }
}
struct LegsScreen_Previews: PreviewProvider {
    static var previews: some View {
        LegsScreen()
    }
}