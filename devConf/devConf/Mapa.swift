//
//  Map1.swift
//  devConf
//
//  Created by Fernando Fontanive on 10/04/23.
//
import SwiftUI

struct Mapa: View {
    @State private var floor = "mapa1"
    @State var search = ""

    
    
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Spacer()
                Text("Mapa do prédio")
                    .fontWeight(.heavy).foregroundColor(.white).font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 15)
                    .padding(.horizontal, 30)
                    
                Text("Trilha de UX Design").foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 30)

                ZStack {
                    Image(floor)
                    .background(Color(.white))
                    .cornerRadius(5)
                }
                
//                    HStack {
                        Spacer()
                        Picker("?", selection: $floor) {
                            Text("1º andar").tag("mapa1")
                            Text("2º andar").tag("mapa2")
                            }
                
                        .pickerStyle(.segmented)
                        .background(Color(.lightGray))
                        .frame(width: 320)
                        .cornerRadius(8)
                
                        Spacer()
                        
                    }
            .onAppear(perform: {
                UISearchBar.appearance().backgroundColor = UIColor.white


            })
            .background(Color("backgroundFirstPurple"))
            Spacer()
                .searchable(text: $search)
                
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("")

        }
    }
}
    


struct mapa_Previews: PreviewProvider {
    static var previews: some View {
        Mapa()
    }
}