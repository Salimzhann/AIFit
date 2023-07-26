//
//  OnBoardingView.swift
//  AIFit
//
//  Created by Manas Salimzhan on 25.07.2023.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            TabView(selection: $pageIndex){
                ForEach(pages) { page in
                    VStack{
                        Spacer()
                        PageView(page: page)
                        Spacer()
                        if page == pages.last {
                            Button("Завершить", action: goToZero)
                                .buttonStyle(.bordered)
                        }else{
                            Button("next", action: incrementPage)
                        }
                        Spacer()
                    }
                    .tag(page.tag)
                }
            }
        }
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
    }
    
    func incrementPage(){
        pageIndex += 1
    }
    func goToZero(){
        pageIndex = 0
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
