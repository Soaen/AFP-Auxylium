//
//  APropos.swift
//  essaiTimer
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct APropos: View {

    @EnvironmentObject var selectedLang: ChoixLangue
    
    @State private var selectedColor = 0

//    @State var languageChoose: String

/*    func testChooseLanguage(test: Int) -> Int {
    
        /*
        if selectedLang.ChooseLanguage >= 5 {
            selectedLang.ChooseLanguage = 0
        }
         */

        if test >= 5 {
            selectedLang.ChooseLanguage = 0
            return 0
        }
        return test
    }
*/
//    selectedLang.ChooseLanguage = testChooseLanguage(test: selectedLang.ChooseLanguage)

    func testChooseLanguage() -> Int {
        if selectedLang.ChooseLanguage >= 5 {
            selectedLang.ChooseLanguage = 0
        }
        return 0
    }
    
    var body: some View {


        let _ = testChooseLanguage()

        ZStack {

            Image("ContactDetailsImg")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.5)

            VStack {
                ScrollView {
                    HStack {
                        Spacer()
                    }

                     Picker("Language", selection: $selectedLang.ChooseLanguage) {
                        ForEach(languages, id:\.self) { lang in
                            Text(lang.flag + " " + lang.lang).tag(lang.ID)
                        }
                    }

                    Text("\(textesDeBienvenue[selectedLang.ChooseLanguage].monTitre1)")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                    Text("\(textesDeBienvenue[selectedLang.ChooseLanguage].monTexte1)")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Text("\(textesDeBienvenue[selectedLang.ChooseLanguage].monTitre2)")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                    Text("\(textesDeBienvenue[selectedLang.ChooseLanguage].monTexte2)")
                        .font(.body)
                        .multilineTextAlignment(.center)                        .padding(.horizontal)
                    Text("\(textesDeBienvenue[selectedLang.ChooseLanguage].monTitre3)")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                    Text("\(textesDeBienvenue[selectedLang.ChooseLanguage].monTexte3)")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct APropos_Previews: PreviewProvider {
    static var previews: some View {
        APropos().environmentObject(ChoixLangue())
            .previewDevice("iPhone 12")
    }
}
