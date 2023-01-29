//
//  Documents.swift
//  Auxylium
//
//  Created by Apprenant 70 on 10/12/2021.
//

import SwiftUI

struct Documents: View {
    var body: some View {
            ZStack{
                HStack {
                    VStack {
                        Text("Pièces d'identité")
                            .font(.title)
                    }.padding()
                        .frame(width: 350, height: 100, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "Global")!))
                        .cornerRadius(15)
                        .offset(y: -260)
                }.shadow(radius: 20)
                HStack {
                    VStack {
                        Text("Documents CERFA")
                            .font(.title)
                    }.padding()
                        .frame(width: 350, height: 100, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "Global")!))
                        .cornerRadius(15)
                        .offset(y: -130)
                }.shadow(radius: 20)
                HStack {
                    VStack {
                        Text("Attestations")
                            .font(.title)
                    }.padding()
                        .frame(width: 350, height: 100, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "Global")!))
                        .cornerRadius(15)
                        .offset(y: 0)
                }.shadow(radius: 20)
                
                
            }.navigationTitle("Documents")
            
            
            
        }
    
}



struct Documents_Previews: PreviewProvider {
    static var previews: some View {
        Documents()
    }
}
