//
//  News.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct News: View {
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                    Text("")
                    Section(header: Text("")) {
                        ForEach(Infos) { info in
                            if info.type == 0 {
                                NavigationLink(destination: InfoDetails(InfoDisplay:  info), label: {
                                    CaseARemplir(InfoDisplay: info)

                                })

                            }
                        }
                    }
                    Section(header: Text("Les Infos utiles").font(.title)) {

                        ForEach(Infos) { info in
                            if info.type == 1 {
                                NavigationLink(destination: WebView(urlString: info.url), label: {
                                    CaseARemplir(InfoDisplay: info)

                                })
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                
            }
            .navigationBarTitle("Informations")
            .navigationBarItems(trailing: NavigationLink(destination: Parameter(), label: {
                Image(systemName: "gearshape.fill")
            }))
        }
    }
}



struct CaseARemplir: View {
    
    var InfoDisplay : Info
    
    var body: some View {
        
        HStack {
            VStack{
                Image(systemName: InfoDisplay.systemImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 20)
                    .foregroundColor(Color(UIColor(named: "TabBarColor")!))
                    
                
                Text(InfoDisplay.title)
                    .font(.title)
                    .foregroundColor(.white)

            }
            .padding()
                .frame(width: 350, height: 100, alignment: .center)
                .background(Color(UIColor(named: "Global")!))
                .cornerRadius(15)
                .shadow(radius: 25)
        }
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
            //.previewDevice("iPhone 12")
        
    }
}
