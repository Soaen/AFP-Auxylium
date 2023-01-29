//
//  ContactDetails.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct ContactDetails: View {
    
    var contactAffiche: Contact
    
    var body: some View {
        ZStack{
            
            Image("ContactDetailsImg")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.6)
            VStack{
                
                HStack{
                    
                    Image(contactAffiche.photo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130)
                        .cornerRadius(100)
                }
                Text("\(contactAffiche.name)")
                    .padding()
                    .font(.largeTitle)
                HStack{
                    VStack{
                        HStack{
                            Text(contactAffiche.ville)
                        }.padding()
                        HStack{
                            Text("\(contactAffiche.age) ans")
                        }
                        HStack{
                            Image(systemName: "envelope")
                            Text("\(contactAffiche.email)")
                        }.padding()
                        HStack{
                            Image(systemName: "bag")
                            Text("\(contactAffiche.profession)")
                        }
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


struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(contactAffiche: contacts[0])
    }
}

