//
//  Profil.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct Profil: View {
    var body: some View {
        NavigationView{
        ScrollView {
            //            ForEach(Profils) { Profil in
            //                HStack{
            //                    NavigationLink(destination: ProfilDetails(profileDisplay: Profil),
            //                                   label: {
            //                        Image(systemName: Profil.systemImage)
            //                            .resizable()
            //                            .scaledToFit()
            //                            .frame(width: 30, height: 30)
            //                            .padding()
            //                            .foregroundColor(Color(UIColor(named: "TabBarColor")!))
            //                        VStack(alignment: .leading) {
            //                            Text(Profil.title)
            //                                .padding()
            //                                .font(.title)
            //                        }
            //                    }).frame(width: 300, height: 100, alignment: .leading)
            //
            //                }.padding()
            //                    .frame(width: 350, height: 100, alignment: .center)
            //                    .foregroundColor(.white)
            //                    .background(Color(UIColor(named: "Global")!))
            //                    .cornerRadius(15)
            //
            //            }
            NavigationLink(destination: ProfilDetails(), label: {
                Image(systemName: "info.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding()
                    .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                VStack(alignment: .leading) {
                    Text("Informations personnelles")
                        .padding()
                        .font(.title2)
                }
            }).padding(.leading)
                .frame(width: 350, height: 100, alignment: .leading)
                .foregroundColor(.white)
                .background(Color(UIColor(named: "Global")!))
                .cornerRadius(15)
            
            
            NavigationLink(destination: Documents(), label: {
                Image(systemName: "folder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding()
                    .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                VStack(alignment: .leading) {
                    Text("Documents")
                        .padding()
                        .font(.title2)
                }
                
                
            }).padding(.leading)
                .frame(width: 350, height: 100, alignment: .leading)
                .foregroundColor(.white)
                .background(Color(UIColor(named: "Global")!))
                .cornerRadius(15)
            
            
            
            
            
            NavigationLink(destination: Demarches(), label: {
                Image(systemName: "doc.on.doc")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding()
                    .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                VStack(alignment: .leading) {
                    Text("Démarches")
                        .padding()
                        .font(.title2)
                }
            }).padding(.leading)
                .frame(width: 350, height: 100, alignment: .leading)
                .foregroundColor(.white)
                .background(Color(UIColor(named: "Global")!))
                .cornerRadius(15)
            HStack{
            
                    Image(systemName: "lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .foregroundColor(Color(UIColor(named: "TabBarColor")!))

                    Text("Déconnexion")
                        .padding()
                        .font(.title2)
                }.padding(.leading)
                    .frame(width: 350, height: 100, alignment: .leading)
                    .foregroundColor(.white)
                    .background(Color(UIColor(named: "Global")!))
                    .cornerRadius(15)
            
            
        }.shadow(radius: 20)
                .navigationTitle("Profil")
                    .navigationBarItems(trailing:
                                            NavigationLink(destination: Parameter()
                                                           , label: {
                        Image(systemName: "gearshape.fill")
                    })
                    )
        }
        
        
    }
}
struct Profil_Previews: PreviewProvider {
    static var previews: some View {
        Profil()
    }
}

