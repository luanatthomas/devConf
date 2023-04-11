//
//  mainScreen.swift
//  devConf
//
//  Created by Luana Tais Thomas on 10/04/23.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        
        NavigationStack {
            GeometryReader{ reader in
                ZStack{
                    Image("mainscreen")
                        .resizable()
                        .ignoresSafeArea(.all)
                    
                    VStack (alignment: .leading, spacing: 30) {
                        Text("Olá, Bianca!")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)

                        HStack (alignment: .top){
                            Text("Acontecendo agora")
                                .multilineTextAlignment(.leading)
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                        }
                        
                        VStack (alignment: .center) {
                            ZStack (alignment: .center){
                                Color.white
                                
                                NavigationLink{
                                    Informacoes()
                                } label: {
                                    VStack (alignment: .leading, spacing: 20){
                                        HStack{
                                            ZStack{
                                                Color(.white)
                                                Image("silvia")
                                                    .resizable()
                                                    .clipShape(Circle())
                                                    .overlay {
                                                        Circle().stroke(.black, lineWidth: 3)
                                                    }
                                                    .foregroundColor(.white)
                                            }
                                            .frame(width: 50, height: 50)
                                            .cornerRadius(100)
                                            
                                            VStack (alignment: .leading){
                                                Text("Silvia Dapper")
                                                    .font(.headline)
                                                    .multilineTextAlignment(.leading)
                                                Text("Acontecendo agora")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                            }
                                        }
                                        Text("\"O futuro do UX de acordo com os especialistas\"")
                                            .font(.title3)
                                            .bold()
                                        
                                        Text("Sala 304")
                                            .multilineTextAlignment(.leading)
                                            .font(.title3)
                                            .bold()
                                            .foregroundColor(Color("backgroundFirstPurple"))
                                    }
                                    .padding()
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .frame(height: reader.size.height * 0.3)
                        .cornerRadius(15)
                        
                        HStack {
                            Text("Próximas palestras")
                                .multilineTextAlignment(.leading)
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                        }
                        
                        VStack (alignment: .center) {
                            ZStack (alignment: .center){
                                Color("backgroundSecondPurple")
                                VStack (alignment: .leading, spacing: 20){
                                    HStack{
                                        ZStack{
                                            Color(.white)
                                            Image("karina")
                                                .resizable()
                                                .clipShape(Circle())
                                                .overlay {
                                                    Circle().stroke(.black, lineWidth: 3)
                                                }
                                                .foregroundColor(.white)
                                        }
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(100)
                                        
                                        VStack (alignment: .leading){
                                            Text("Karina Tronkos")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(.white)
                                            Text("Começa às 9:45")
                                                .font(.subheadline)
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(.white)
                                        }
                                    }
                                    Text("\"Boas práticas para deixar o seu app mais acessível\"")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.white)
                                    
                                    Text("Sala 214")
                                        .multilineTextAlignment(.leading)
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.black)
                                }
                                .padding()
                            }
                        }
                        .frame(height: reader.size.height * 0.3)
                        .cornerRadius(15)
                    }
                    .padding()
                }
            }
        }
    }
}

struct mainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
