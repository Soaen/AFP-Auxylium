//
//  ChooseLang.swift
//  Auxylium
//
//  Created by Apprenant 70 on 14/12/2021.
//

import SwiftUI

struct ChooseLang: View {
    @EnvironmentObject var selectedLang: ChoixLangue
    @State private var selectedColor = "Coucou"
    @State var choix1 = 0
    @State var ben = "Bienvenue"
    
    var body: some View{
        ZStack{
            Image("BackgroundHome")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: 380)
                Picker("Language", selection: $selectedLang.ChooseLanguage) {
                    ForEach(languages, id:\.self) { lang in
                        Text(lang.flag + " " + lang.lang).tag(lang.ID)
                            .foregroundColor(.red)
                            .padding()
                            .font(.title)
                    }
                }
            
                
                
            }
        }
    }
}


struct ChooseLang_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLang()
    }
}
