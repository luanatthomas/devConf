//
//  TestePageView.swift
//  devConf
//
//  Created by Gustavo Diefenbach on 11/04/23.
//

import SwiftUI

struct TestePageView: View {
    var body: some View {
        NavigationStack{
            TabView {
                Onboarding1()
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Page 1")
                    }
                    .ignoresSafeArea(.all)

                Onboarding2()
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Page 2")
                    }
                    .ignoresSafeArea(.all)
                
                Onboarding3()
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Page 3")
                    }
                    .ignoresSafeArea(.all)

            }
            //.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .ignoresSafeArea(.all)
        }
    }
}

struct TestePageView_Previews: PreviewProvider {
    static var previews: some View {
        TestePageView()
    }
}
