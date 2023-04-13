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
            VStack{
                
                Image(self.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
//                Spacer()
                Text(self.text)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom,-5)
                    .lineLimit(2, reservesSpace: true)
//                Spacer()
            }.padding(5)
        }
        .frame(width: 150, height: 200)
        .background(Color(backgroundColor))
        .cornerRadius(20)
        
    }
}

struct CardAreas_Previews: PreviewProvider {
    static var previews: some View {
        CardAreas(image: "testeagain",text: "Design", backgroundColor: "stackLilac")
        
    }
}
