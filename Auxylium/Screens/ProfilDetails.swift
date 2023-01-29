//
//  ProfilDetails.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI
struct ProfilDetails: View {
    let emailclara = "clara.pichat@gmail.com"
    
    var body: some View {
        
        ZStack{
            Image("ContactDetailsImg")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.6)
            VStack{
                HStack{
                    Image("Clara_Pichat")
                        .resizable()
                        .frame(width: 120, height: 130)
                        .clipShape(Circle())
                    Text ("Clara Pichat")
                        .font(.largeTitle)
                        .bold()
                }
                VStack{
                    Text ("22 ans")
                }.offset(x: 60,y: -30)
                    .font(.title)
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading, spacing: 12) {
                    HStack{
                        Image(systemName: "envelope")
                            .unredacted()
                        Text(emailclara) 
                        
                    }
                    HStack{
                        Image(systemName: "phone")
                        Text ("06 26 72 93 22")
                    }
                    HStack{
                        Image(systemName: "bag")
                        Text("Etudiante")
                    }
                    
                    HStack{
                        Image(systemName: "globe.europe.africa")
                        Text("Polonaise")
                    }
                    HStack{
                        Image(systemName: "graduationcap")
                        Text("Licence Economie Gestion")
                    }
                    HStack{
                        Image(systemName: "globe")
                        Text("Polonais, Anglais, Français")
                    }
                }
            }.padding()
                .frame(width: 350, height: 500, alignment: .center)
                .foregroundColor(.white)
                .background(Color(UIColor(named: "DetailsColor")!))
                .cornerRadius(15)
                .offset(y: -40)
        }
    }
}

struct ProfilDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProfilDetails()
    }
}
