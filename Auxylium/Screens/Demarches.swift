//
//  Demarches.swift
//  Auxylium
//
//  Created by Apprenant 70 on 14/12/2021.
//

import SwiftUI

struct Demarches: View {
    var body: some View {
            ZStack{
                HStack {
                    VStack {
                        Text("Carte de séjour")
                            .font(.title)
                    }.padding()
                        .frame(width: 350, height: 100, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "Global")!))
                        .cornerRadius(15)
                        .offset(y: -250)
                }.shadow(radius: 20)
                HStack {
                    VStack {
                        Text("Logement")
                            .font(.title)
                    }.padding()
                        .frame(width: 350, height: 100, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "Global")!))
                        .cornerRadius(15)
                        .offset(y: -120)
                }.shadow(radius: 20)
                HStack {
                    VStack {
                        Text("Crous")
                            .font(.title)
                    }.padding()
                        .frame(width: 350, height: 100, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "Global")!))
                        .cornerRadius(15)
                        .offset(y: 10)
                }.shadow(radius: 20)
                
                HStack {
                    VStack {
                        Text("Autres")
                            .font(.title)
                    }.padding()
                        .frame(width: 350, height: 100, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "Global")!))
                        .cornerRadius(15)
                        .offset(y: 140)
                }.shadow(radius: 20)

            }.navigationTitle("Mes Démarches")
        }
    
}

struct Demarches_Previews: PreviewProvider {
    static var previews: some View {
        Demarches()
    }
}
