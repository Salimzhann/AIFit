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
                               Label("Меню", systemImage: "house")
                           }
                       ChatScreen()
                           .tabItem {
                               Label("Чат", systemImage: "ellipsis.bubble")
                           }
                       ExercisesScreen()
                           .tabItem {
                               Label("Гайд", systemImage: "book")
                           }
                       SimpleToDoView()
                           .tabItem{
                               Label("Лист", systemImage: "list.bullet.clipboard")
                           }
                   }
                   .accentColor(Color.red)
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
