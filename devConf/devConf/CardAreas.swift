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
        VStack(alignment: .center, spacing: 10){
            Image(self.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140)
            VStack {
                Text(self.text)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            .frame(height: 75)
            
            
            
        }
        .frame(width: 160, height: 235)
        .background(Color(backgroundColor))
        .cornerRadius(20)
    }
}

struct CardAreas_Previews: PreviewProvider {
    static var previews: some View {
        CardAreas(image: "testeagain",text: "Design", backgroundColor: "stackLilac")
        
    }
}
