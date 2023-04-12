//
//  Onboarding1.swift
//  devConf
//
//  Created by Bianca Viera on 10/04/23.
//

import SwiftUI

struct Onboarding1: View {
    
    @State private var page = 1
    
    var body: some View {
        ZStack {
            Image("onboarding1")
                .resizable()
                .edgesIgnoringSafeArea(.top)
            VStack{
                Text("Bem-vindo ao")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Image("dado")
                Text ("The Developer's Conference")
                    .font(.title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(30)
                
                Text("Deslize para começar")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                
            }
        }
    }
}

struct Onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1()
    }
}
