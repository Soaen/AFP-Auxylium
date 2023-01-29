//
//  HomePage.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct HomePage: View {
    @State var isClicked = false
    
    var body: some View {
        if !isClicked {
            firstPage(isClicked: $isClicked)
        }else {
            ContentView()
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomePage().environmentObject(ChoixLangue())
        }
    }
}

struct firstPage : View{
    @EnvironmentObject var selectedLang: ChoixLangue
    @State private var selectedColor = "Coucou"
    @Binding var isClicked: Bool
    @State var ben = "Bienvenue"
    @State var formuleDansMaLangue = "Un accompagnement simplifié"
    @State var dansVotreLangue = "Choisissez votre langue"
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    let textChoice = ["Choisissez votre langue", "Choose your language", "اختر لغتك", "Basitleştirilmiş destek", "Ընտրեք ձեր լեզուն", "选择你的语言", "تىلىڭىزنى تاللاڭ"]
    @State var choix1 = 0
    @State var choix2 = 0
    
    
    var body: some View{
        ZStack{
            Image("BackgroundHome")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: 380)
                
                
                
                Button(action: {
                    switch choix1 {
                    case 0: ben = "Bienvenue"
                    case 1: ben = "Welcome"
                    case 2: ben = "مرحبا"
                    case 3: ben = "Hoş geldin"
                    case 4: ben = "Բարի գալուստ"
                    case 5: ben = "歡迎"
                    case 6: ben = "خۇش كەپسىز"
                    default: ben = "pas de choix de langue"
                    }
                    print("\(ben)")
                    //                    APropos(languageChoose: ben)
                    
                }, label: {
                    Text("\(dansVotreLangue)")
                        .font(.system(size: 30.0))
                        .fontWeight(.light)
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1))
                        .multilineTextAlignment(.center)
                        .padding()
                        .onReceive(timer) { input in
                            if choix2 < (textChoice.count - 1) {
                                choix2 += 1
                            } else {
                                choix2 = 0
                            }
                            self.dansVotreLangue = "\(textChoice[choix2])"
                        }
                })
                
                
                
                Picker("Language", selection: $selectedLang.ChooseLanguage) {
                    ForEach(languages, id:\.self) { lang in
                        Text(lang.flag + " " + lang.lang).tag(lang.ID)
                            .foregroundColor(.red)
                            .padding()
                            .font(.title)
                    }
                }
                Button(action: {
                    isClicked = true
                }) {
                    Image(systemName: "paperplane.circle.fill")
                        .font(.system(size: 60))
                        .accentColor(Color(UIColor(named: "TabBarColor")!))
                }
            }
        }
    }
}
