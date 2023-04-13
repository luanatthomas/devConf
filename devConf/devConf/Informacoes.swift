//
//  infoView.swift
//  devConf
//
//  Created by Luana Tais Thomas on 11/04/23.
//

import SwiftUI

struct Informacoes: View {
    var body: some View {
        
        GeometryReader{ reader in
            ZStack{
                Image("mainscreen")
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                VStack (alignment: .trailing, spacing: 30) {
                    HStack {
                        Text("Palestrante")
                            .multilineTextAlignment(.leading)
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName:"heart")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                    }
                                                
                    VStack (alignment: .center) {
                        ZStack (alignment: .center){
                            Color.white
                            
                            VStack (alignment: .leading, spacing: 20){
                                HStack{
                                    ZStack{
                                        Color(.white)
                                        Image("silvia")
                                            .resizable()
                                            .clipShape(Circle())
                                            .overlay {
                                                Circle().stroke(.black, lineWidth: 2)
                                            }
                                            .foregroundColor(.white)
                                    }
                                    .frame(width: 45, height: 45)
                                    .cornerRadius(100)
                                        
                                    VStack (alignment: .leading){
                                        Text("Silvia Dapper")
                                            .font(.title2)
                                            .bold()
                                            .multilineTextAlignment(.leading)
                                    }
                                    
                                    Spacer()
                                }
                                Text("Designer UX e professora universitátia, Silvia se especializou na experienca do usuario de produtos digitais e na vida academica. Palestra em diversos eventos de design.")
                                    .font(.body)
                            }
                            .padding()
                        }
                    }
                    .frame(height: reader.size.height * 0.3)
                    .cornerRadius(15)
                    
                    HStack {
                        Text("Assunto")
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                    }
                        
                    VStack (alignment: .center) {
                        ZStack (alignment: .center){
                            Color(.white)
                            VStack (alignment: .leading, spacing: 20){
                                HStack{
                                    ZStack{
                                        Color(.white)
                                        Image(systemName: "person.crop.circle")
                                            .resizable()
                                            .clipShape(Circle())
                                            .overlay {
                                                Circle().stroke(.black, lineWidth: 3)
                                            }
                                    }
                                    .frame(width: 45, height: 45)
                                    .cornerRadius(100)
                                        
                                    VStack (alignment: .leading){
                                        Text("UX Design")
                                            .font(.title2)
                                            .bold()
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                                Text("A experiência do usuário é um fator determinante no sucesso do seu negócio. Entender de pessoas, como elas se comportam e o que elas sentem, torna-se essencial.")
                                    .font(.body)
                            }
                            .padding()
                        }
                    }
                    .frame(height: reader.size.height * 0.3)
                    .cornerRadius(15)
                }
                .padding()
            }
//            .navigationBarBackButtonHidden(true)
        }
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        Informacoes()
    }
}
