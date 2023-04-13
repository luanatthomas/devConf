//
//  ContentView.swift
//  devConf
//
//  Created by Luana Tais Thomas on 10/04/23.
//

import SwiftUI

struct TabViewTeste: View {
    @State private var selectedTab : Int = 2
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedTab) {
                Agenda()
                    .tabItem {
                        Label("Agenda", systemImage: "calendar")
                    }
                    .tag(0)
                Mapa()
                    .tabItem {
                        Label("Mapa", systemImage: "map")
                    }
                    .tag(1)
                MainScreen(selectedTab: $selectedTab)
                    .tabItem {
                        Label("Palestra", systemImage: "text.bubble")
                    }
                    .tag(2)
                Favorites()
                    .tabItem {
                        Label("Favoritos", systemImage: "heart")
                    }
                    .tag(3)
                Profile()
                    .tabItem {
                        Label("Perfil", systemImage: "person")
                    }
                    .tag(4)
            }
            .navigationBarBackButtonHidden(true)
        }

    }
}

struct TabViewTeste_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTeste()
    }
}
