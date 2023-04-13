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
    var selected : CGFloat = 3
    
    init(image: String = "", text: String = "", backgroundColor: String = "") {
        self.image = image
        self.text = text
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: selected)
                    .frame(width: 135, height: 185)
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
                .padding(15)
            }
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
