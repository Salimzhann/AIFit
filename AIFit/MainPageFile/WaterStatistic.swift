//
//  WaterStatistic.swift
//  AIFit
//
//  Created by Manas Salimzhan on 28.06.2023.
//
import SwiftUI

struct WaterStatistic: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.white)
            }
            .navigationTitle("Work")
        }
    }
}

struct WaterStatistic_Previews: PreviewProvider {
    static var previews: some View {
        WaterStatistic()
    }
}

