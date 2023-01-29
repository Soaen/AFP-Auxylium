//
//  Security.swift
//  Auxylium
//
//  Created by Apprenant 70 on 14/12/2021.
//

import SwiftUI

struct Security: View {
    var body: some View {
        ZStack{
            Image("ContactDetailsImg")
                            .resizable()
                            .ignoresSafeArea()
                            .opacity(0.6)
        VStack(alignment: .leading, spacing: 12) {
                        HStack{
                            
                            Image(systemName: "checkmark.shield")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .offset(y: -20)
                            
                            
                            Text ("Sécurité")
                                .font(.largeTitle)
                                .bold()
                                .offset(y: -20)
                        }
                        HStack{
                            
                            Image(systemName:"key")
                                .unredacted()
                            Text("Modifier le mot de passe")
                            
                        }
                        
                        HStack{
                            
                            Image(systemName: "phone")
                            Text ("Modifier le numéro de téléphone")
                        }
                        
                        HStack{
                            Image(systemName: "envelope")
                                .unredacted()
                            Text("Modifier l'email")
                        }

                        HStack{
                            Image(systemName: "exclamationmark.shield")
                                .unredacted()
                            Text("Identification à deux facteurs")
                        }
                    }.padding()
                        .frame(width: 350, height: 400, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "DetailsColor")!))
                        
                        .cornerRadius(15)
                        .offset(y: -40)
                    
                }
            }
}
        

struct Security_Previews: PreviewProvider {
    static var previews: some View {
        Security()
    }
}
