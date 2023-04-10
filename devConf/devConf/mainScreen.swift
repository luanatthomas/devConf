//
//  mainScreen.swift
//  devConf
//
//  Created by Luana Tais Thomas on 10/04/23.
//

import SwiftUI

struct mainScreen: View {
    var body: some View {
        ZStack{
            Image("mainscreen")
                .resizable()
                .ignoresSafeArea(.all)
            
        }
    }
}

struct mainScreen_Previews: PreviewProvider {
    static var previews: some View {
        mainScreen()
    }
}
