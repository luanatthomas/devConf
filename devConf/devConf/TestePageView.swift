//
//  TestePageView.swift
//  devConf
//
//  Created by Gustavo Diefenbach on 11/04/23.
//

import SwiftUI

struct TestePageView: View {
    var body: some View {
        TabView {
            Onboarding1()
                .tabItem {
                    Image(systemName: "circle")
                    Text("Page 1")
                }
            Onboarding2()
                .tabItem {
                    Image(systemName: "circle")
                    Text("Page 2")
                }
            Onboarding3()
                .tabItem {
                    Image(systemName: "circle")
                    Text("Page 3")
                }
        }
        .background(.green)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct TestePageView_Previews: PreviewProvider {
    static var previews: some View {
        TestePageView()
    }
}
