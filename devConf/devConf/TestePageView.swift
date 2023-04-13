//
//  TestePageView.swift
//  devConf
//
//  Created by Gustavo Diefenbach on 11/04/23.
//

import SwiftUI

struct TestePageView: View {
    var body: some View {
<<<<<<< HEAD
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
=======
        NavigationStack{
            ScrollView {
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
                .frame(
                    width: UIScreen.main.bounds.width ,
                    height: UIScreen.main.bounds.height
                )
                .tabViewStyle(PageTabViewStyle())
>>>>>>> b83491ddc001849aac780b901b2652572d06f36a
            }
            .edgesIgnoringSafeArea(.all)
        }
}

struct TestePageView_Previews: PreviewProvider {
    static var previews: some View {
        TestePageView()
    }
}
