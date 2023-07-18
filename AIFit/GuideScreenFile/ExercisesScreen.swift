//
//  ExercisesScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 09.06.2023.
//

import SwiftUI

struct ExercisesScreen: View {
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
                            NavigationLink(destination: ChestScreen(), label: {
                                ZStack{
                                    Image("chest")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .opacity(0.8)
                                    LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                        .frame(width: 350, height: 100)
                                        .cornerRadius(20)
                                    HStack{
                                        Text("Грудь")
                                            .font(.largeTitle)
                                            .bold()
                                            .foregroundColor(Color(.white))
                                            .padding(.trailing,43)
                                        Spacer()
                                    }.padding(.leading,36)
                                }
                                .padding(.top, 20)
                                .padding(.horizontal,16)
                            })
                        })
                        
                        
                        Button(action: {
                            
                        }, label: {
                            NavigationLink(destination: ShoulderScreen(), label: {
                                ZStack{
                                    Image("shoulder")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .opacity(0.8)
                                    LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                        .frame(width: 350, height: 100)
                                        .cornerRadius(20)
                                    HStack{
                                        Text("Плечи")
                                            .font(.largeTitle)
                                            .bold()
                                            .foregroundColor(Color(.white))
                                            .padding(.trailing,43)
                                        Spacer()
                                    }.padding(.leading,36)
                                        .padding(.horizontal,16)
                                }
                            })
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            NavigationLink(destination: BackScreen(), label: {
                                ZStack{
                                    Image("back")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .opacity(0.8)
                                    LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                        .frame(width: 350, height: 100)
                                        .cornerRadius(20)
                                    HStack{
                                        Text("Спина")
                                            .font(.largeTitle)
                                            .bold()
                                            .foregroundColor(Color(.white))
                                            .padding(.trailing,43)
                                        Spacer()
                                    }.padding(.leading,36)
                                        .padding(.horizontal,16)
                                }
                            })
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            NavigationLink(destination: BicepsScreen(), label: {
                                ZStack{
                                    Image("biceps")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .opacity(0.8)
                                    LinearGradient(colors: [Color(uiColor: .red), .clear,.clear], startPoint: .leading, endPoint: .trailing)
                                        .frame(width: 350, height: 100)
                                        .cornerRadius(20)
                                    HStack{
                                        Text("Бицепс")
                                            .font(.largeTitle)
                                            .bold()
                                            .foregroundColor(Color(.white))
                                            .padding(.trailing,43)
                                        Spacer()
                                    }.padding(.leading,36)
                                        .padding(.horizontal,16)
                                }
                            })
                        })
                        Button(action: {
                            
                        }, label: {
                            NavigationLink(destination: TritsScreen(), label: {
                                ZStack{
                                    Image("trits")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .opacity(0.8)
                                    LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                        .frame(width: 350, height: 100)
                                        .cornerRadius(20)
                                    HStack{
                                        Text("Трицепс")
                                            .font(.largeTitle)
                                            .bold()
                                            .foregroundColor(Color(.white))
                                            .padding(.trailing,43)
                                        Spacer()
                                    }.padding(.leading,36)
                                        .padding(.horizontal,16)
                                }
                            })
                        })
                        
                        Button(action: {
                        }, label: {
                            NavigationLink(destination: LegsScreen(), label: {
                                ZStack{
                                    Image("break")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .opacity(0.8)
                                    LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                        .frame(width: 350, height: 100)
                                        .cornerRadius(20)
                                    HStack{
                                        Text("Ноги")
                                            .font(.largeTitle)
                                            .bold()
                                            .foregroundColor(Color(.white))
                                            .padding(.trailing,43)
                                        Spacer()
                                    }.padding(.leading,36)
                                        .padding(.horizontal,16)
                                }
                            })
                        })
                        Spacer()
                    }
                    }
            }
            .navigationTitle("Упражнения")
            .toolbarBackground(
                Color.black, for: .navigationBar)
        }
    }
}

struct ExercisesScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesScreen()
    }
}
