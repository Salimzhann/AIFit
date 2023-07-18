//
//  VypadyvpScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 23.06.2023.
//

import SwiftUI

struct VypadyvpScreen: View {
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
                        VStack{
                            Image("vypadyvpExample")
                                .resizable()
                                .cornerRadius(12)
                                .padding(20)
                                .padding(.horizontal,5)
                                .frame(width: 406, height: 356)
                            Text("Выпады вперед")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.trailing,150)
                                .padding(.bottom,1)
                            Text("Нагружает ягодичные мышцы и переднюю поверхность бедра лучше, чем приседания и становая тяга.Укрепляет мышцы‑стабилизаторы таза и корпуса, прокачивает чувство равновесия.При соблюдении правильной техники безопасно для коленей и может использоваться во время реабилитации после травм и операций.")
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color.white, lineWidth: 1)
                                        .frame(width: 350, height: 230)
                                    
                                )
                                .padding(.horizontal,40)
                                .padding(.vertical, 2)
                                .foregroundColor(.white)
                            Text("\nТехника выполнения")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .bold()
                                .padding(.bottom,1)
                                .padding(.trailing, 90)
                            VStack(spacing: 30){
                                Text("Наклоняйте корпус с прямой спиной.Такое положение снимает нагрузку с поясницы, защищает колени от воздействия силы сдвига и увеличивает напряжение мышц бёдер и ягодиц. Чтобы проверить правильное положение, попробуйте тест с приседанием.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Сделайте выпад, а затем, не меняя положения корпуса и бёдер, подставьте сзади стоящую ногу так, чтобы у вас получилось приседание. Если вам комфортно — стойка была правильная. Если же вы не смогли удержать равновесие, наклон корпуса в выпаде был недостаточным.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Не раскачивайтесь из стороны в сторону. Представьте, что ваши плечи и бёдра находятся внутри прямоугольника. Во время выпада он должен оставаться таким же ровным, как в исходном положении.Если бёдра или плечи заваливаются на одну сторону и вы не можете этому помешать, значит, вам не хватает силы, гибкости или баланса, чтобы выполнять упражнение правильно. Поэтому для начала попробуйте делать его с поддержкой. Например, ухватившись руками за кольца.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 320)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Напрягайте пресс. Напряжённый пресс поможет занять правильное положение и защитит тело от ненужных скручиваний и поворотов.Не сжимайте ягодицы. Дополнительно напрягая ягодицы, вы мешаете бёдрам уйти назад и занять правильное положение. Более того, вы не даёте мышцам как следует растянуться в нижней точке, что снижает эффект от упражнения.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 230)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Не отрывайте пятку опорной ноги от пола. Это важное правило, которое поможет вам защитить колени.Лучше всего выполнять выпады в жёсткой обуви — так будет проще переносить вес тела на полную стопу, а не только на переднюю часть.Не давайте колену скручиваться внутрь. Оно должно смотреть чётко вперёд.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 210)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                                
                                Text("Не расставляйте ноги широко. Если вы делаете выпады вперёд и назад, следите, чтобы впереди стоящая нога была практически на одной линии со сзади стоящей. Не нужно расставлять ноги широко: это портит форму упражнения и может вызвать воспаление и боль в бёдрах.")
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 350, height: 190)
                                        
                                    )
                                    .padding(.horizontal,40)
                                    .padding(.vertical, 1)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Ноги")
            .foregroundColor(.white)
            
        }
    }
}

struct VypadyvpScreen_Previews: PreviewProvider {
    static var previews: some View {
        VypadyvpScreen()
    }
}
