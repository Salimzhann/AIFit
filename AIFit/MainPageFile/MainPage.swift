//
//  MainScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 08.06.2023.
//

//
//  MainScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 08.06.2023.
//
import SwiftUI

struct MainPage: View {
    let notify = NotificationHandler()
    @State private var selectedDate = Date()
    @AppStorage("waterCounter") var counter: Int = 0
    private let goal: Double = 8
    @AppStorage("IsActive") var challenge: Bool = false
    @AppStorage("IsActive1") var challenge1: Bool = false
    @AppStorage("IsActive2") var challenge2: Bool = false
    @AppStorage("IsActive3") var challenge3: Bool = false
    @AppStorage("IsActive4") var challenge4: Bool = false
    @State private var showAlert = false
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UIWindow.appearance().overrideUserInterfaceStyle = .unspecified
    }
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                            ZStack{
                                LinearGradient(colors: [Color(uiColor: .darkGray), .clear], startPoint: .top, endPoint: .bottom)
                                    .cornerRadius(15)
                                    .padding(.top, 20)
                                    .frame(height: 258)
                                    .opacity(0.35)
                                    .blur(radius: 2)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(LinearGradient(colors: [.white, .clear], startPoint: .top, endPoint: .bottom), lineWidth:2)
                                            .blur(radius:1.3)
                                            .opacity(0.7)
                                            .frame(height: 221))
                                
                                VStack{
                                    HStack{
                                        VStack{
                                            Text("Потребление воды")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                                .bold()
                                                .padding(.trailing,20)
                                            
                                            Text("\(selectedDate, formatter: dateFormatter)")
                                                .font(.headline)
                                                .foregroundColor(Color.white)
                                                .bold()
                                                .padding(.trailing,20)
                                                .padding(.bottom,10)
                                            
                                            Text("\(counter) / 8 стакан")
                                                .font(.system(size: 30))
                                                .foregroundColor(Color.blue.opacity(1))
                                                .bold()
                                                .padding(.trailing,20)
                                                .padding(.bottom,20)
                                        }
                                        ZStack{
                                            Circle()
                                                .stroke(Color.blue.opacity(0.4), lineWidth: 25)
                                            Circle()
                                                .trim(from: 0, to: CGFloat(progress))
                                                .stroke(LinearGradient(colors: [.blue,Color.teal], startPoint: .top, endPoint: .bottom), lineWidth: 30)
                                                .rotationEffect(Angle(degrees: -90))
                                                .animation(.linear(duration: 0.5))
                                        }
                                        .frame(width: 110, height: 110)
                                        .padding(.trailing,15)
                                    }
                                    .padding(.top, 60)
                                    Button(action:{
                                        counter+=1
                                        UserDefaults.standard.set(counter,forKey: "waterCounter")
                                    }, label: {
                                        Text(" Добавить    ")
                                            .foregroundColor(Color.white)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.white, lineWidth:2)
                                                    .frame(width: 200, height: 35))
                                            .padding(30)
                                    })
                                }
                            }
                        
                        
                        
                        
                        Text("Испытание по привычкам")
                            .padding(.top,20)
                            .foregroundColor(Color.white)
                            .bold()
                            .font(.system(size: 27))
                        VStack(spacing:20){
                            if challenge  {
                                Challenges(titles: "Ранний подъем",sd: 130)
                            }else{
                                ZStack{
                                    Image("wakeup")
                                        .resizable()
                                        .cornerRadius(14)
                                        .opacity(0.47)
                                        .frame(height: 218)
                                        .blur(radius: 3)
                                    RoundedRectangle(cornerRadius: 16)
                                        .frame(height: 218)
                                        .foregroundColor(.blue)
                                        .opacity(0.6)
                                    VStack{
                                        HStack{
                                            VStack{
                                                Image(systemName: "alarm")
                                                    .resizable()
                                                    .frame(width:  30, height: 30)
                                                    .padding(.trailing,245)
                                                    .foregroundColor(.white)
                                                Text("Ранний подъем")
                                                    .font(.system(size: 30))
                                                    .padding(.trailing,55)
                                                    .foregroundColor(.white)
                                                    .bold()
                                                Text("Кто рано встает - тому Бог подает")
                                                    .font(.system(size: 18))
                                                    .padding(.leading,15)
                                                    .padding(.bottom, 30)
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                        Button(action:{
                                            if !challenge1 && !challenge2 && !challenge3 && !challenge4{
                                                UserDefaults.standard.set(true, forKey: "IsActive")
                                            }else{
                                                showAlert = true
                                            }
                                        }, label:{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 17)
                                                    .frame(width: 180, height: 40)
                                                    .foregroundColor(.white)
                                                Text("Присоединиться")
                                                    .foregroundColor(.black)
                                            }
                                        })
                                        .alert(isPresented: $showAlert) {
                                            Alert(
                                                title: Text("Ошибка"),
                                                message: Text("У вас уже  активированo другое испытание"),
                                                dismissButton: .default(Text("OK"))
                                            )
                                        }
                                    }
                                }
                            }
                            if challenge1  {
                                Challenges(titles: "Отказ от сладостей", sd: 80)
                            }else{
                                ZStack{
                                    Image("sweets")
                                        .resizable()
                                        .cornerRadius(14)
                                        .opacity(0.47)
                                        .frame(height: 218)
                                        .blur(radius: 3)
                                    RoundedRectangle(cornerRadius: 16)
                                        .frame(height: 218)
                                        .foregroundColor(.pink)
                                        .opacity(0.6)
                                    VStack{
                                        HStack{
                                            VStack{
                                                Image(systemName: "birthday.cake")
                                                    .resizable()
                                                    .frame(width:  30, height: 30)
                                                    .padding(.trailing,230)
                                                    .foregroundColor(.white)
                                                Text("Отказ от сладостей")
                                                    .font(.system(size: 30))
                                                    .padding(.leading,15)
                                                    .foregroundColor(.white)
                                                    .bold()
                                                Text("Посветите себя борьбе с \nлишним весом")
                                                    .font(.system(size: 18))
                                                    .padding(.trailing,40)
                                                    .padding(.bottom, 17)
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                        Button(action:{
                                            if !challenge && !challenge2 && !challenge3 && !challenge4{
                                                UserDefaults.standard.set(true, forKey: "IsActive1")
                                            }else{
                                                showAlert = true
                                            }
                                        }, label:{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 17)
                                                    .frame(width: 180, height: 40)
                                                    .foregroundColor(.white)
                                                Text("Присоединиться")
                                                    .foregroundColor(.black)
                                            }
                                        })
                                        .alert(isPresented: $showAlert) {
                                            Alert(
                                                title: Text("Ошибка"),
                                                message: Text("У вас уже  активированo другое испытание"),
                                                dismissButton: .default(Text("OK"))
                                            )
                                        }
                                    }}
                            }
                            
                            if challenge2 {
                                Challenges(titles: "Никакой техники ", sd: 100)
                            }else{
                                ZStack{
                                    Image("gadgets")
                                        .resizable()
                                        .cornerRadius(14)
                                        .opacity(0.47)
                                        .frame(height: 218)
                                        .blur(radius: 3)
                                    RoundedRectangle(cornerRadius: 16)
                                        .frame(height: 218)
                                        .foregroundColor(.purple)
                                        .opacity(0.6)
                                    VStack{
                                        HStack{
                                            VStack{
                                            Image(systemName: "phone.bubble.left")
                                                .resizable()
                                                .frame(width:  30, height: 30)
                                                .padding(.trailing,210)
                                                .foregroundColor(.white)
                                            Text("Никакой техники перед сном")
                                                .font(.system(size: 30))
                                                .padding(.leading,15)
                                                .foregroundColor(.white)
                                                .bold()
                                            Text("Успокойте разум перед сном")
                                                .font(.system(size: 18))
                                                .padding(.leading,10)
                                                .padding(.bottom, 1)
                                                .foregroundColor(.white)
                                        }
                                            Spacer()
                                    }
                                        Button(action:{
                                            if !challenge && !challenge1 && !challenge3 && !challenge4{
                                                UserDefaults.standard.set(true, forKey: "IsActive2")
                                            }else{
                                                showAlert = true
                                            }
                                        }, label:{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 17)
                                                    .frame(width: 180, height: 40)
                                                    .foregroundColor(.white)
                                                Text("Присоединиться")
                                                    .foregroundColor(.black)
                                            }
                                        })
                                        .alert(isPresented: $showAlert) {
                                            Alert(
                                                title: Text("Ошибка"),
                                                message: Text("У вас уже  активированo другое испытание"),
                                                dismissButton: .default(Text("OK"))
                                            )
                                        }
                                    }}
                            }
                            if challenge3 {
                                Challenges(titles: "Неделя без кофеина",sd: 70)
                            }else{
                                ZStack{
                                    Image("cafein")
                                        .resizable()
                                        .cornerRadius(14)
                                        .opacity(0.47)
                                        .frame(height: 218)
                                        .blur(radius: 3)
                                    RoundedRectangle(cornerRadius: 16)
                                        .frame(height: 218)
                                        .foregroundColor(.brown)
                                        .opacity(0.6)
                                    VStack{
                                        HStack{
                                            VStack{
                                            Image(systemName: "cup.and.saucer.fill")
                                                .resizable()
                                                .frame(width:  30, height: 30)
                                                .padding(.trailing,250)
                                                .foregroundColor(.white)
                                            Text("Неделя без кофеина")
                                                .font(.system(size: 30))
                                                .padding(.leading,15)
                                                .foregroundColor(.white)
                                                .bold()
                                            Text("Контролируй разум сам!")
                                                .font(.system(size: 18))
                                                .padding(.trailing,65)
                                                .foregroundColor(.white)
                                                .padding(.bottom,40)
                                        }
                                            Spacer()
                                    }
                                        Button(action:{
                                            if !challenge && !challenge1 && !challenge2 && !challenge4{                                            UserDefaults.standard.set(true, forKey: "IsActive3")
                                            }else{
                                                showAlert = true
                                            }
                                        }, label:{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 17)
                                                    .frame(width: 180, height: 40)
                                                    .foregroundColor(.white)
                                                Text("Присоединиться")
                                                    .foregroundColor(.black)
                                            }
                                        })
                                        .alert(isPresented: $showAlert) {
                                            Alert(
                                                title: Text("Ошибка"),
                                                message: Text("У вас уже  активированo другое испытание"),
                                                dismissButton: .default(Text("OK"))
                                            )
                                        }
                                    }}
                            }
                            if challenge4 {
                                Challenges(titles: "Никакой еды перед сном",sd:20)
                            }else{
                                ZStack{
                                    Image("food")
                                        .resizable()
                                        .cornerRadius(14)
                                        .opacity(0.47)
                                        .frame(height: 218)
                                        .blur(radius: 3)
                                    RoundedRectangle(cornerRadius: 16)
                                        .frame(height: 218)
                                        .foregroundColor(.red)
                                        .opacity(0.6)
                                    VStack{
                                        HStack{
                                            VStack{
                                            Image(systemName: "fork.knife")
                                                .resizable()
                                                .frame(width:  30, height: 30)
                                                .padding(.trailing,140)
                                                .foregroundColor(.white)
                                            Text("Никакой еды \nперед сном")
                                                .font(.system(size: 30))
                                                .padding(.leading,15)
                                                .foregroundColor(.white)
                                                .bold()
                                            Text("Насладитесь сном")
                                                .font(.system(size: 18))
                                                .padding(.trailing,15)
                                                .foregroundColor(.white)
                                        }
                                            Spacer()
                                    }
                                        Button(action:{
                                            if !challenge && !challenge1 && !challenge2 && !challenge3 {
                                                challenge4 = true
                                                UserDefaults.standard.set(true, forKey: "IsActive4")
                                            }else{
                                                showAlert = true
                                            }
                                        }, label:{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 17)
                                                    .frame(width: 180, height: 40)
                                                    .foregroundColor(.white)
                                                Text("Присоединиться")
                                                    .foregroundColor(.black)
                                            }
                                        })
                                        .alert(isPresented: $showAlert) {
                                            Alert(
                                                title: Text("Ошибка"),
                                                message: Text("У вас уже  активированo другое испытание"),
                                                dismissButton: .default(Text("OK"))
                                            )
                                        }
                                    }
                                    
                                }}
                        }
                    }
                    .padding(.horizontal,16)
                    .navigationTitle("Главная страница")
                    .toolbarBackground(
                        Color.black, for: .navigationBar)
                }
            }
        }
    }
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    private var progress: Double {
        let percentage = Double(counter) / goal
        return min(percentage, 1.0)
    }
}


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
