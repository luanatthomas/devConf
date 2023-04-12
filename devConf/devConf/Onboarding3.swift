//
//  Onboarding3.swift
//  devConf
//
//  Created by Bianca Viera on 10/04/23.
//

import SwiftUI

struct Onboarding3: View {
    @State private var page = 1
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("backgroundFirstPurple")
                    .edgesIgnoringSafeArea(.top)
                ScrollView{
                    ZStack{
                        VStack{
                            Text("Escolha sua área de conhecimento")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(20)
                            VStack{
                                HStack{
                                    CardAreas(image: "testeagain",text: "Design", backgroundColor: "stackLilac")
                                    CardAreas(image: "testee",text: "IA e Dados",backgroundColor: "stackGreen")
                                }
                                HStack{
                                    CardAreas(image: "teste3",text: "Agile",backgroundColor: "stackSalmon")
                                    CardAreas(image: "teste4",text: "Web e Mobile",backgroundColor: "stackBlue")
                                }
                                HStack{
                                    CardAreas(image: "teste2",text: "Cloud e Devops",backgroundColor: "stackPink")
                                    CardAreas(image: "teste5",text: "Micro Services",backgroundColor: "stackBeige")
                                }
                                HStack{
                                    CardAreas(image: "teste6",text: "Qualidade e testes",backgroundColor: "stackPurple")
                                    CardAreas(image: "teste7",text: "API",backgroundColor: "stackBlue")
                                }
                                NavigationLink(destination: TabViewTeste()) {
                                    HStack{
                                        Text("Concluir").font(.title).bold()
                                    }
                                    .frame(width: 300,height: 100)
                                    .background(.white)
                                    .cornerRadius(20)
                                }
                                
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}
