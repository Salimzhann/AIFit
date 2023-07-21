//
//  Login.swift
//  AIFit
//
//  Created by Manas Salimzhan on 20.07.2023.
//

import SwiftUI

struct Login: View{
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    @StateObject var loginData = LoginViewModel()
    var body: some View{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                VStack{
                    
                    VStack{
                        Text("Continue with phone")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(
                            )
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                        
                        Text("You receive")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            .padding()
                        
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 6){
                                
                                Text("Enter your number: ")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                Text("+ \(loginData.getCountryCode())  \(loginData.phNo)")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                            }
                            Spacer(minLength: 0)
                            
                            Button(action: {}){
                                Text("Continue")
                                    .foregroundColor(.white)
                                    .padding(.vertical,18)
                                    .padding(.horizontal,38)
                                    .background(.yellow)
                                    .cornerRadius(15)
                                 
                            }
                        }.padding()
                            .background(.black)
                            .cornerRadius(20)
                    }
                    .frame(height: UIScreen.main.bounds.height / 1.8)
                    .background(Color.black)
                    .cornerRadius(20)
                    
                    GeometryReader {reader in
                        
                        VStack{
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 3), spacing: 15){
                                ForEach(rows,id: \.self) {value in
                                    
                                    Button(action: {}){
                                        ZStack{
                                            if value == "Delete"{
                                                Image(systemName: value)
                                                    .font(.title2)
                                                    .foregroundColor(.black)
                                                
                                                
                                            }else{
                                                Text(value)
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.black)
                                                
                                            }
                                        }
                                        .frame(width: getWidth(frame: reader.frame(in: .global)), height: getHeight(frame: reader.frame(in: .global)))
                                        .background(.white)
                                        .cornerRadius(10)
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
                .background(Color("bg").ignoresSafeArea(.all, edges: .bottom))
            }
        }
    func getWidth(frame: CGRect) -> CGFloat{
        let width = frame.width
        let actualWidth = width - 40
        return actualWidth / 3
    }
    func getHeight(frame: CGRect) -> CGFloat{
        let height = frame.height
        let actualHeight = height - 30
        return actualHeight / 4
    }
}

var rows = ["1","2","3","4","5","6","7","8","9","","0","Delete"]
