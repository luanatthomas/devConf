//
//  favorites.swift
//  devConf
//
//  Created by Gustavo Diefenbach on 10/04/23.
//

import SwiftUI

struct Favorites: View {
    var body: some View {
        ZStack{
            Image("onboarding2")
                .resizable()
                .ignoresSafeArea()
            VStack (alignment: .leading){
                Text("Palestras Favoritas")
                    .foregroundColor(.white)
                    .font(.system(.largeTitle))
                Text("Design")
                    .foregroundColor(.white)
                    .font(.system(.title2))
                    .fontWeight(.bold)
                List {
                    HStack{
                        Text("UX Design")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                    HStack{
                        Text("UI Design")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                    HStack{
                        Text("Design System")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                    HStack{
                        Text("Service Design")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                }
                HStack{
                    Text("Informações")
                        .foregroundColor(.white)
                        .font(.system(.title2))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.vertical,20)
                List(){
                    HStack{
                        Text("Microfrontends")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                    HStack{
                        Text("SwiftUI")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                    HStack{
                        Text("Web e Frontend")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                    HStack{
                        Text("Javascript")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                    HStack{
                        Text("React")
                            .font(.system(.title2))
                        Spacer()
                        Image(systemName: "heart.fill")
                    }
                }
                
            }
        }
    }
}
    
    struct Favorites_Previews: PreviewProvider {
        static var previews: some View {
            Favorites()
        }
    }
