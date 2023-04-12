//
//  ListElement.swift
//  devConf
//
//  Created by Fernando Fontanive on 11/04/23.
//

import SwiftUI

struct ListElement: View {
    var hora: String
    var nome: String
    var fav: Bool
    
//    init(hora: String, nome: String, fav: Bool) {
//        self.hora = hora
//        self.nome = nome
//        self.fav = fav
//    }
    
    var body: some View {
        HStack {
            Text(self.hora)
            Text(self.nome)
            Spacer()
            Image(systemName: self.fav ? "heart.fill" : "heart")
        }
    }
}

struct ListElement_Previews: PreviewProvider {
    static var previews: some View {
        ListElement(hora: "", nome: "", fav: true)
    }
}
