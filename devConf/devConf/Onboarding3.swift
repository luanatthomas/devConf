//
//  Onboarding3.swift
//  devConf
//
//  Created by Bianca Viera on 10/04/23.
//

import SwiftUI

struct Onboarding3: View {
    @State private var page = 1
    @State private var isPresenting : Bool = false
    
    var body: some View {
        
        ZStack {
            Color("backgroundFirstPurple")
                .ignoresSafeArea()
            ScrollView (showsIndicators: false){
                VStack{
                    Text("Escolha sua área de conhecimento")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 60)
                    VStack (spacing: 20){
                        HStack (spacing: 20){
                            CardAreas(image: "testeagain",text: "Design", backgroundColor: "stackLilac")
                            CardAreas(image: "testee",text: "IA e     Dados",backgroundColor: "stackGreen")
                        }
                        HStack (spacing: 20){
                            CardAreas(image: "teste3",text: "Agile",backgroundColor: "stackSalmon")
                            CardAreas(image: "teste4",text: "Web e Mobile",backgroundColor: "stackBlue")
                        }
                        HStack (spacing: 20){
                            CardAreas(image: "teste2",text: "Cloud e Devops",backgroundColor: "stackPink")
                            CardAreas(image: "teste5",text: "Micro Services",backgroundColor: "stackBeige")
                        }
                        HStack (spacing: 20){
                            CardAreas(image: "teste6",text: "Qualidade e testes",backgroundColor: "stackPurple")
                            CardAreas(image: "teste7",text: "API",backgroundColor: "stackBlue")
                        }
                        Button {
                            self.isPresenting = true
                        } label: {
                            HStack{
                                Text("Concluir").font(.title).bold()
                            }
                            .frame(width: 200,height: 80)
                            .background(.white)
                            .cornerRadius(20)
                            .padding(.bottom, 50)
                        }
                        
                    }
                }
            }
            
        }
        .fullScreenCover(isPresented: $isPresenting){
            TabViewTeste()
        }
    }
}

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}
