//
//  FitnessCalendarView.swift
//  AIFit
//
//  Created by Manas Salimzhan on 25.06.2023.
//
import SwiftUI

struct FitnessCalendarView: View {
    var days = [5,4,3,3,7,6,5]
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ZStack{
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 350, height: 340)
                    .foregroundColor(Color(uiColor: .white))
                    .opacity(0.2)
                VStack{
                    Text("Water intake")
                        .foregroundColor(.white)
                        .font(.system(size: 34))
                        .fontWeight(.heavy)
                    HStack(spacing: 15){
                        BarView(level: CGFloat(days[0]*25), day: "Пн")
                        BarView(level: CGFloat(days[1]*25), day: "Вт")
                        BarView(level: CGFloat(days[2]*25), day: "Ср")
                        BarView(level: CGFloat(days[3]*25), day: "Чт")
                        BarView(level: CGFloat(days[4]*25), day: "Пт")
                        BarView(level: CGFloat(days[5]*25), day: "Сб")
                        BarView(level: CGFloat(days[6]*25), day: "Вс")
                    }
                }
            }
        }
    }
}

struct BarView: View {
    @State var level: CGFloat
    @State var day: String
    var body: some View{
        VStack{
            ZStack( alignment: .bottom ){
                Capsule().frame(width: 30, height: 200).foregroundColor(Color(uiColor: .lightGray)).opacity(0.16)
                Capsule().frame(width: 30, height:  level).foregroundColor(Color(uiColor: .systemBlue))
            }
            Text(day).foregroundColor(.white)
        }
    }
}
struct FitnessCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        FitnessCalendarView()
    }
}
