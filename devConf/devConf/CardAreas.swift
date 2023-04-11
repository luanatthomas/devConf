//
//  CardAreas.swift
//  devConf
//
//  Created by Bianca Viera on 11/04/23.
//

import SwiftUI

struct CardAreas: View {
    var image = ""
    var text = ""
    var backgroundColor = ""
    
    init(image: String = "", text: String = "", backgroundColor: String = "") {
        self.image = image
        self.text = text
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        VStack{
            Image(self.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
            Text(self.text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.bottom,10)
                .lineLimit(2, reservesSpace: true)
        }
        .frame(width: 150, height: 200)
        .background(Color(backgroundColor))
        .cornerRadius(20)
        .padding(5)
    }
}

struct CardAreas_Previews: PreviewProvider {
    static var previews: some View {
        CardAreas()
    }
}
