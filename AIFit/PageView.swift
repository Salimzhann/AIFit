//
//  PageView.swift
//  AIFit
//
//  Created by Manas Salimzhan on 25.07.2023.
//

import SwiftUI

struct PageView: View {
    var page: Page
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
        VStack(spacing: 20){
            Image("\(page.imageURL)")
                .resizable()
                .scaledToFit()
                .frame(height: 320)
                .cornerRadius(30)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding()
                .padding(.top,100)
            
            Text(page.name)
                .foregroundColor(.white)
                .font(.title)
            Text(page.description)
                .foregroundColor(.white)
                .font(.subheadline)
                .frame(width: 300)
        }
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}
