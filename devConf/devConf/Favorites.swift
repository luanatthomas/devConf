//
//  favorites.swift
//  devConf
//
//  Created by Gustavo Diefenbach on 10/04/23.
//

import SwiftUI

struct Favorites: View {
    var body: some View {
        
        ZStack {
            Image("onboarding2")
                .resizable()
                .edgesIgnoringSafeArea(.top)
            ScrollView{
                VStack (alignment: .leading){
                    Text("Palestras Favoritas")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.top, 40)
                        .bold()
                    
                    Text("Design")
                        .foregroundColor(.white)
                        .font(.system(.title2))
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    VStack{
                        Divider()
                            .padding(.bottom, 5)
                        HStack{
                            Text("UX Design")
                                .font(.body)
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
                        HStack{
                            Text("UI Design")
                                .font(.body)
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
                        HStack{
                            Text("Design System")
                                .font(.body)
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
                        HStack{
                            Text("Service Design")
                                .font(.body)
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
                    }
                    .padding(.horizontal, 20)
                    .background(.white)
                    .cornerRadius(20)
                    HStack{
                        Text("Informações")
                            .foregroundColor(.white)
                            .font(.system(.title2))
                            .fontWeight(.bold)
                            .padding(.top, 10)
                            .padding(.bottom, -15)
                        Spacer()
                    }
                    .padding(.vertical,20)
                    VStack{
                        Divider()
                            .padding(.bottom, 5)
                        HStack{
                            Text("Microfrontends")
                                .font(.body)
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
                        HStack{
                            Text("SwiftUI")
                                .font(.body)
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
                        HStack{
                            Text("Web e Frontend")
                                .font(.body)
                            Spacer()
                            Image(systemName: "heart.fill")
                        }
                        Divider()
                        HStack {
                            HStack{
                                Text("Javascript")
                                    .font(.body)
                                Spacer()
                                Image(systemName: "heart.fill")
                            }
                        }
                        Divider()
                        Group{
                            HStack{
                                Text("React")
                                    .font(.body)
                                Spacer()
                                Image(systemName: "heart.fill")
                            }
                            Divider()
                        }
                    }
                    .padding(.horizontal, 20)
                    .background(.white)
                    .cornerRadius(20)
                }
                .padding()
            }
        }
        
    }
}

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
    }
}
