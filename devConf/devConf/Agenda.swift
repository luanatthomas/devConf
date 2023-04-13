//
//  Agenda.swift
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
    Evento(hora: "08:45", nome: "UX Design", fav: false),
    Evento(hora: "09:45", nome: "UI Design", fav: true),
    Evento(hora: "11:30", nome: "Design System", fav: false),
    Evento(hora: "13:00", nome: "Service Design", fav: false),
    Evento(hora: "14:00", nome: "Interaction Design", fav: true),
    Evento(hora: "15:00", nome: "Sound Design", fav: false),
    Evento(hora: "16:00", nome: "Motion Design", fav: true),
    Evento(hora: "17:00", nome: "Product Design", fav: false),
    Evento(hora: "18:00", nome: "Design Thinking", fav: false)
]

var lista2 : [Evento] = [
    Evento(hora: "08:45", nome: "UX Design II", fav: false),
    Evento(hora: "09:45", nome: "UI Design II", fav: false),
    Evento(hora: "11:30", nome: "Design System II", fav: true),
    Evento(hora: "13:00", nome: "Service Design II", fav: true),
    Evento(hora: "14:00", nome: "Interaction Design II", fav: true),
    Evento(hora: "15:00", nome: "Sound Design II", fav: false),
    Evento(hora: "16:00", nome: "Motion Design II", fav: false),
    Evento(hora: "17:00", nome: "Product Design II", fav: true),
    Evento(hora: "18:00", nome: "Design Thinking II", fav: true)
]

var lista3 : [Evento] = [
    Evento(hora: "08:45", nome: "UX Design III", fav: false),
    Evento(hora: "09:45", nome: "UI Design III", fav: true),
    Evento(hora: "11:30", nome: "Design System III", fav: false),
    Evento(hora: "13:00", nome: "Service Design III", fav: true),
    Evento(hora: "14:00", nome: "Interaction Design III", fav: false),
    Evento(hora: "15:00", nome: "Sound Design III", fav: true),
    Evento(hora: "16:00", nome: "Ending Cocktail", fav: true)
    
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
            Color("backgroundFirstPurple")
                .edgesIgnoringSafeArea(.top)
            VStack {
                VStack {
                    SearchBar(text: $search)
                }.padding(.top, 40)
                
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
                    .background(Color("lightGray"))
                    .frame(width: 340)
                    .cornerRadius(8)
                    
                    Spacer()
                    List(final[dia]) {
                        ListElement(hora: $0.hora, nome: $0.nome, fav: $0.fav)
                    }
                    .navigationBarBackButtonHidden(true)
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
}

struct agenda_Previews: PreviewProvider {
    static var previews: some View {
        Agenda()
    }
}
