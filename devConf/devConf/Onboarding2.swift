//
//  Onboarding2.swift
//  devConf
//
//  Created by Bianca Viera on 10/04/23.
//

import SwiftUI

struct Onboarding2: View {
    var body: some View {
        ZStack{
            Image("onboarding2")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("maos")
                Text("Acesse o evento com o QR Code no seu perfil")
                    .font(.title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(55)
                
            }
        }
        
    }
}

struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}
