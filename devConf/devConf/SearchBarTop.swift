//
//  SearchBarTop.swift
//  devConf
//
//  Created by Fernando Fontanive on 13/04/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .modifier(LeadingImageModifier(systemName: "magnifyingglass"))
        }
        .foregroundColor(.secondary)
        .padding(8)
        .background(Color("lightGray"))
        .cornerRadius(8)
        .padding(.horizontal)
        .frame(width: 370)
    }
}

struct LeadingImageModifier: ViewModifier {
    let systemName: String

    func body(content: Content) -> some View {
        HStack {
            Image(systemName: systemName)
                .foregroundColor(.secondary)
            content
        }
    }
}

//struct SearchBarTop: View {
//    var body: some View {
//        ZStack {
//            Color("backgroundFirstPurple")
//
//                .edgesIgnoringSafeArea(.top)
//
//            VStack {
//
//                VStack {
//                    Search(text: $text)
//                }
//            }
//        }
//    }
//}

struct SearchBarTop_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
