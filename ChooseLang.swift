//
//  ChooseLang.swift
//  Auxylium
//
//  Created by Apprenant 70 on 14/12/2021.
//

import SwiftUI

struct ChooseLang: View {
    @State private var selectedColor = "Coucou"
    @EnvironmentObject var selectedLang: ChoixLangue
    func testChooseLanguage() -> Int {
        if selectedLang.ChooseLanguage >= 5 {
            selectedLang.ChooseLanguage = 0
        }
        return 0
    }

    var body: some View {
        let _ = testChooseLanguage()
    ZStack{
            
            Image("ContactDetailsImg")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.6)
            
            VStack(alignment: .leading, spacing: 12) {
                
                HStack{
                    
                    Image(systemName: "flag")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .offset(x: 80, y: -20)
                }
                    VStack{
                    Text ("Modifier la Langue")
                        .font(.title)
                        .bold()
                        .offset(y: -20)
                    }
                
                HStack{
                    
                    Image(systemName:"globe")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .unredacted()
                    Picker("Language", selection: $selectedLang.ChooseLanguage) {
                       ForEach(languages, id:\.self) { lang in
                           Text(lang.flag + " " + lang.lang).tag(lang.ID)
                       }
                   }
                                .foregroundColor(.red)
                                .padding()
                                .font(.title)

                    
                }
                
                
                

               
            }.padding()
                .frame(width: 350, height: 300, alignment: .center)
                .foregroundColor(.white)
                .background(Color(UIColor(named: "DetailsColor")!))
                .cornerRadius(15)
                .offset(y: -40)
            
        }
    }
}


struct ChooseLang_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLang().environmentObject(ChoixLangue())
    }
}
