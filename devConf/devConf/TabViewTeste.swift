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
            Agenda()
                .tabItem {
                    Label("Agenda", systemImage: "calendar")
                }
            Mapa()
                .tabItem {
                    Label("Mapa", systemImage: "map")
                }
            MainScreen()
                .tabItem {
                    Label("Palestra", systemImage: "text.bubble")
                }
            Favorites()
                .tabItem {
                    Label("Favoritos", systemImage: "heart")
                }
            Profile()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }
        .navigationBarBackButtonHidden(true)

    }
}

struct TabViewTeste_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTeste()
    }
}
