//
//  Contacts.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct Contacts: View {
    var contactAffiche: Contact
    var searchResults: [Contact] {
        if searchText.isEmpty {
            return contacts
        } else {
            return contacts.filter { $0.name.contains(searchText) || $0.ville.contains(searchText)}
        }
    }
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach (searchResults, id: \.self) { contact in
                    NavigationLink(destination: ContactDetails(contactAffiche: contact)) {
                        HStack {
                            Image(contact.photo)
                                .resizable()
                                .font(.system(size: 40))
                                .frame(width: 60, height: 60)
                                .cornerRadius(30)
                                .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                            
                            VStack (alignment: .leading){
                                Text(contact.name)
                                    .font(.title)
                            }
                        }
                        .frame(width: 300, height: 100, alignment: .leading)
                    }.padding()
                        .frame(width: 350, height: 80, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named: "Global")!))
                        .cornerRadius(15)
                }
                .searchable(text: $searchText)
                .navigationTitle("Contacts")
                .navigationBarItems(trailing:
                                        NavigationLink(destination: Parameter()
                                                       , label: {
                    Image(systemName: "gearshape.fill")
                })
                )
            }.shadow(radius: 20)
        }
    }
    
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(contactAffiche: contacts[0])
    }
}
