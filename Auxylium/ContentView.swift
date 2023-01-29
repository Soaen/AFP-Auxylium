//
//  ContentView.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView {
                Calendar()
                    .tabItem{
                        Image(systemName: "calendar")
                        Text("Calendrier")
                    }
                ChatList(messageAffiche: messages[0])
                    .tabItem {
                        Image(systemName: "paperplane")
                        Text("Messagerie")
                    }
                News()
                    .tabItem{
                        Image(systemName: "newspaper")
                        Text("News")
                    }
                Contacts(contactAffiche: contacts[0])
                    .tabItem{
                        Image(systemName: "person.2.crop.square.stack.fill")
                        Text("Contacts")
                    }
                Profil()
                    .tabItem{
                        Image(systemName: "person.circle")
                        Text("Profil")
                    }
            }.accentColor(Color(UIColor(named: "TabBarColor")!))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ChoixLangue())
    }
}
