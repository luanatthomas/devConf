//
//  ContentView.swift
//  devConf
//
//  Created by Luana Tais Thomas on 10/04/23.
//

import SwiftUI

struct TabViewTeste: View {
    var body: some View {
        TabView {
            Text("Home Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Label("Agenda", systemImage: "calendar")
                }
         
            Text("Bookmark Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Label("Mapa", systemImage: "map")
                }
         
            Text("Video Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Label("Palestra", systemImage: "text.bubble")
                }
         
            //Text("Profile Tab")
            Favorites()
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Label("Favoritos", systemImage: "heart")
                }
            
            //Text("Profile Tab")
            Profile()
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }.background(Color.clear)
    }
}

struct TabViewTeste_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTeste()
    }
}
