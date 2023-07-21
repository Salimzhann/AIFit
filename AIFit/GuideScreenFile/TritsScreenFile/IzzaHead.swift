//
//  IzzaHead.swift
//  AIFit
//
//  Created by Manas Salimzhan on 13.07.2023.
//

import SwiftUI

struct IzzaHead: View {
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
                        Image("izzaheadExample")
                            .resizable()
                            .cornerRadius(12)
                            .padding(.horizontal,16)
                            .frame(width: 406, height: 306)
                        
                        Text("Раз­ги­бание рук из-за го­ловы")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .bold()
                            .padding(.trailing,1)
                            .padding(.bottom,1)
                        Text("Го­лов­ные раз­ги­бания (осо­бен­но с од­ной ру­кой) очень час­то при­меня­лись же­лез­ным Ар­ни в тре­ниров­ках рук, он счи­тал его од­ним из луч­ших “уз­коспе­ци­али­зиро­ван­ных” три­цеп­со­вых уп­ражне­ний и (в том чис­ле) с по­мощью не­го до­бил­ся вну­шитель­ных объ­емов рук и их де­тали­зиро­ван­ности.")
                            .padding(.horizontal,16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.white, lineWidth: 1)
                                    .frame(width: 350, height: 190)
                                
                            )
                            .padding(.horizontal,16)
                            .padding(.vertical, 1)
                            .foregroundColor(.white)
                        Text("\nТехника выполнения")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                            .padding(.trailing, 90)
                            .padding(.bottom,1)
                        VStack(spacing: 30){
                            Text("Возь­ми­те ган­тель и сядь­те на скамью. Под­ни­мите ее дву­мя ру­ками над\nго­ловой и удер­жи­вай­те на вы­тяну­тых ру­ках ров­но над ма­куш­кой. Прос­ле­дите за тем, что­бы ла­дони и лок­ти бы­ли об­ра­щены внутрь. Жес­тко уп­ри­тесь но­гами в пол, прог­ни­те спи­ну, а взгляд нап­равте впе­ред. Это Ва­ше ис­ходное по­ложе­ние.")
                                .padding(.horizontal,16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 190)
                                ).padding(.horizontal,16)
                                .padding(.vertical, 1)
                            
                            Text("На вдо­хе (сох­ра­няя пле­чи близ­ко к \nго­лове и лок­ти слег­ка раз­ве­ден­ны­ми в сто­роны) мед­ленно опус­ти­те сна­ряд за го­лову, до тех пор, по­ка пред­плечья не кос­нутся би­цеп­сов. За­дер­жи­тесь в ниж­ней точ­ке на 1-2 сче­та, а за­тем мощ­ным уси­ли­ем три­цеп­сов выж­ми­те ган­тель вверх, со­вер­шая при этом вы­дох. Пов­то­рите за­дан­ное ко­личес­тво раз.")
                                .padding(.horizontal,16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 210)
                                )
                                .padding(.horizontal,16)
                                .padding(.vertical, 1)
                        }
                    }.padding(.horizontal,16)
                }
            }
            .navigationTitle("Трицепсы")
            .foregroundColor(.white)
            
        }
    }
}

struct IzzaHead_Previews: PreviewProvider {
    static var previews: some View {
        IzzaHead()
    }
}
