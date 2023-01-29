//
//  Parameter.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct Parameter: View {

    var body: some View {
        /*        ZStack{
         ScrollView {
         ForEach(settings) { setting in
         HStack{
         NavigationLink(destination: SettingDetails(settingDisplay: setting),
         label: {
         Image(systemName: setting.systemImage)
         .resizable()
         .scaledToFit()
         .frame(width: 30, height: 30)
         .padding()
         .foregroundColor(Color(UIColor(named: "TabBarColor")!))
         VStack(alignment: .leading) {
         Text(setting.title)
         .padding()
         .font(.title)
         }
         }).frame(width: 300, height: 100, alignment: .leading)
         }.padding()
         .frame(width: 350, height: 100, alignment: .center)
         .foregroundColor(.white)
         .background(Color(UIColor(named: "Global")!))
         .cornerRadius(15)
         }
         }.navigationTitle("Paramètres")
         }.shadow(radius: 20)
         }
         }*/
        ZStack {
            ScrollView {
                NavigationLink(destination: APropos(), label: {
                    Image(systemName: "info.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                    VStack(alignment: .leading) {
                        Text("À propos")
                            .padding()
                            .font(.title2)
                    }
                }).padding(.leading)
                    .frame(width: 350, height: 70, alignment: .leading)
                    .foregroundColor(.white)
                    .background(Color(UIColor(named: "Global")!))
                    .cornerRadius(15)
                
                
                NavigationLink(destination: Notifications(), label: {
                    Image(systemName: "bell")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                    VStack(alignment: .leading) {
                        Text("Notifications")
                            .padding()
                            .font(.title2)
                    }
                }).padding(.leading)
                    .frame(width: 350, height: 70, alignment: .leading)
                    .foregroundColor(.white)
                    .background(Color(UIColor(named: "Global")!))
                    .cornerRadius(15)
                NavigationLink(destination: Security(), label: {
                    Image(systemName: "checkmark.shield")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                    VStack(alignment: .leading) {
                        Text("Sécurité")
                            .padding()
                            .font(.title2)
                    }
                }).padding(.leading)
                    .frame(width: 350, height: 70, alignment: .leading)
                    .foregroundColor(.white)
                    .background(Color(UIColor(named: "Global")!))
                    .cornerRadius(15)
                NavigationLink(destination: HelpView(), label: {
                    Image(systemName: "lifepreserver")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                    VStack(alignment: .leading) {
                        Text("Aide")
                            .padding()
                            .font(.title2)
                    }
                }).padding(.leading)
                    .frame(width: 350, height: 70, alignment: .leading)
                    .foregroundColor(.white)
                    .background(Color(UIColor(named: "Global")!))
                    .cornerRadius(15)
                NavigationLink(destination: ChooseLang(), label: {
                    Image(systemName: "flag")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                        .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                    VStack(alignment: .leading) {
                        Text("Choix de la langue")
                            .padding()
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .lineLimit(1)
                    }
                }).padding(.leading)
                    .frame(width: 350, height: 70, alignment: .leading)
                    .foregroundColor(.white)
                    .background(Color(UIColor(named: "Global")!))
                    .cornerRadius(15)
            }.shadow(radius: 25)
            .navigationTitle("Paramètres")
        }
    }
}

struct Parameter_Previews: PreviewProvider {
    static var previews: some View {
        Parameter().environmentObject(ChoixLangue())
            .previewDevice("iPhone 12")
    }
}
