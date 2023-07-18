//
//  ContentView.swift
//  AIFit
//
//  Created by Manas Salimzhan on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                   TabView {
                       MainPage()
                           .tabItem {
                               Label("Menu", systemImage: "house")
                           }
                       ChatScreen()
                           .tabItem {
                               Label("Chat", systemImage: "ellipsis.bubble")
                           }
                       ExercisesScreen()
                           .tabItem {
                               Label("Guide", systemImage: "book")
                           }
                   }
                   .accentColor(Color.blue)
                   .background(Color.black)
               }
               .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
