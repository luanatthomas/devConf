//
//  profile.swift
//  devConf
//
//  Created by Gustavo Diefenbach on 10/04/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack{
            Image("onboarding2")
                .resizable()
                .ignoresSafeArea()
            VStack (alignment: .leading){
                Text("Olá, Bianca!")
                    .foregroundColor(.white)
                    .font(.system(.largeTitle))
                Text("Acesse o evento")
                    .foregroundColor(.white)
                    .font(.system(.title))
                    .fontWeight(.bold)
                VStack{
                    Section(header: Text("")){
                        Image("qrcode").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                        Text("Premium Pass")
                    }
                }
                .frame(width: 350, height: 280, alignment: .center)
                .background(.white)
                .cornerRadius(CGFloat(20))
                HStack{
                    Text("Informações")
                        .foregroundColor(.white)
                        .font(.system(.title))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.vertical,20)
                VStack (alignment: .leading){
                    VStack {
                        Divider()
                        HStack{
                            Image(systemName: "text.bubble")
                            Text("Minhas Trilhas")
                                .font(.system(.title2))
                            Spacer()
                        }
                        Divider()
                        HStack{
                            Image(systemName: "heart")
                            Text("Palestras Favoritas")
                                .font(.system(.title2))
                            Spacer()
                        }
                        Divider()
                        HStack{
                            Image(systemName: "gearshape")
                            Text("Configurações")                                .font(.system(.title2))
                            Spacer()
                        }
                        Divider()
                        HStack{
                            Image(systemName: "headphones.circle")
                            Text("Ajuda")                                .font(.system(.title2))
                            Spacer()
                        }
                        Divider()
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                }
                .background(.white)
                .cornerRadius(CGFloat(20))
                Spacer()
            }.padding(20)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
