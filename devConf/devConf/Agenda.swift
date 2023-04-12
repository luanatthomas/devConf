//
//  Map1.swift
//  devConf
//
//  Created by Fernando Fontanive on 10/04/23.
//
import SwiftUI

struct Evento: Identifiable {
    var id: UUID = UUID()
    var hora: String
    var nome: String
    var fav: Bool
    
    init(hora: String, nome: String, fav: Bool) {
        self.hora = hora
        self.nome = nome
        self.fav = fav
    }
}

var lista1 : [Evento] = [
    Evento(hora: "08:00", nome: "teste", fav: false),
    Evento(hora: "08:00", nome: "teste", fav: true),
    Evento(hora: "08:00", nome: "teste", fav: true),
    Evento(hora: "08:00", nome: "teste", fav: true),
    Evento(hora: "08:00", nome: "teste", fav: true),
    Evento(hora: "08:00", nome: "teste", fav: true)
]

var lista2 : [Evento] = [
    Evento(hora: "08:00", nome: "teste2", fav: true),
    Evento(hora: "08:00", nome: "teste2", fav: false),
    Evento(hora: "08:00", nome: "teste2", fav: true),
    Evento(hora: "08:00", nome: "teste2", fav: true),
    Evento(hora: "08:00", nome: "teste2", fav: true),
    Evento(hora: "08:00", nome: "teste2", fav: true)
]

var lista3 : [Evento] = [
    Evento(hora: "08:00", nome: "teste3", fav: true),
    Evento(hora: "08:00", nome: "teste3", fav: true),
    Evento(hora: "08:00", nome: "teste3", fav: false),
    Evento(hora: "08:00", nome: "teste3", fav: true),
    Evento(hora: "08:00", nome: "teste3", fav: true),
    Evento(hora: "08:00", nome: "teste3", fav: true)
]

var final : [[Evento]] = [ lista1, lista2, lista3 ]




struct Agenda: View {
    @State private var dia = 0
    @State var search = ""
    
    struct Hoje: Identifiable {
        let name: String
        let id = UUID()
    }
    
    var body: some View {
        ZStack {
            Image("onboarding2")
                .resizable()
                .edgesIgnoringSafeArea(.top)
            VStack {
                Text("Agenda")
                    .fontWeight(.heavy).foregroundColor(.white).font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 30)
                
                Spacer()
                Picker("?", selection: $dia) {
                    Text("Hoje").tag(0)
                    Text("Amanhã").tag(1)
                    Text("Sexta").tag(2)
                }
                .pickerStyle(.segmented)
                .background(Color(.lightGray))
                .frame(width: 320)
                .cornerRadius(8)
                Spacer()
                List(final[dia]) {
                    ListElement(hora: $0.hora, nome: $0.nome, fav: $0.fav)
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}





struct agenda_Previews: PreviewProvider {
    static var previews: some View {
        Agenda()
    }
}
