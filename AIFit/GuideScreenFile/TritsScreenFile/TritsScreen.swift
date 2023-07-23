//
//  TritsScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct TritsScreen: View {
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
                                NavigationLink(destination: francezhimgan(), label: {
                                    ZStack{
                                        Image("francezhim")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear,.clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Французский жим с гантелями")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: franceZhimGrif(),label: {
                                    ZStack{
                                        Image("francezhimgrif")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red), .clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Французский жим со штангой")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: RazgipBlok(),label: {
                                    ZStack{
                                        Image("razgipblok")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Pазгибание рук на блоке")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: IzzaHead(),label: {
                                    ZStack{
                                        Image("izzahead")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Раз­ги­бание рук из-за го­ловы")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: RazgipvN(),label: {
                                    ZStack{
                                        Image("razgipvn")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Pазгибание рук в наклоне")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: ObrPush(),label: {
                                    ZStack{
                                        Image("obrpush")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Oбратные \n отжимания")
                                                .font(.largeTitle)
                                                .bold()
                                                .foregroundColor(Color(.white))
                                        }
                                    }
                                })
                            })
                            Button(action: {
                                
                            }, label: {
                                NavigationLink(destination: IzzaheadGan(),label: {
                                    ZStack{
                                        Image("izzaheadgan")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .opacity(0.7)
                                        LinearGradient(colors: [Color(uiColor: .red),.clear, .clear], startPoint: .leading, endPoint: .trailing)
                                            .frame(height: 100)
                                            .cornerRadius(20)
                                        HStack{
                                            Text("Pазгибание штанги\n из за головы")
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
            .navigationTitle("Трицепс")
            .toolbarBackground(
                Color.black, for: .navigationBar)
            
        }
    }
}
struct TritsScreen_Previews: PreviewProvider {
    static var previews: some View {
        TritsScreen()
    }
}
