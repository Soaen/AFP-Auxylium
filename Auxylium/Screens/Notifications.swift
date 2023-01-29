//
//  Notifications.swift
//  Struct Data & View
//
//  Created by Apprenant 70 on 10/12/2021.
//

import SwiftUI

struct Notifications: View {
    
    @EnvironmentObject var selectedLang: ChoixLangue
    
    @State private var alertNotif = false
    
    var texteAlarm: String {
        if alertNotif {
            return "Vous serez alerté pour vos prochains rendez-vous"
            
        } else {
            return "attention à ne pas oublier vos rendez-vous"
        }
    }
    
    @State private var alertNews = false
    
    var texteNews: String {
        if alertNews {
            return "Vous serez notifié des dernière nouvelles"
            
        } else {
            return "Les news peuvent vous aider dans vos démarches"
        }
    }
    
    @State private var alertMessages = false
    
    var texteMessages: String {
        if alertMessages {
            return "Vous serez notifié des dernière nouvelles"
            
        } else {
            return "Les news peuvent vous aider dans vos démarches"
        }
    }
    
    var body: some View {
        
        ZStack {
            
            Image("ContactDetailsImg")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.7)
            
            VStack {
                Spacer()
                   
                switch selectedLang.ChooseLanguage {
                case 0:
                    Image(systemName: "checkmark.shield")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding()
                        .offset(x: -110,y: -30)
                    Text("Notifications")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                        .offset(x: 10, y: -120)
                    
                    Toggle("Rendez-vous", isOn: $alertNotif)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                        .font(.body)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30.0)
                        .offset(y: -100)
                    

                    Toggle("News", isOn: $alertNews)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                        .font(.body)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30.0)
                        .offset(y: -100)
                    
                    Toggle("Messages", isOn: $alertMessages)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                        .font(.body)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30.0)
                        .offset(y: -100)

                case 1:
                    Text("Notifications")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                        .offset(y: -100)
                    
                case 2:
                    Text("Notificaciones")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                        .offset(y: -100)

                    
                case 3:
                    Text("Notifications")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                        .offset(y: -100)

                case 4:
                    Text("通知")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                        .offset(y: -100)

                default:
                    Text("Notifications")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                        .offset(y: -100)

                    
                }
                
            }.padding()
                .frame(width: 350, height: 400, alignment: .center)
                .foregroundColor(.white)
                .background(Color(UIColor(named: "DetailsColor")!))
            
                .cornerRadius(15)
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications().environmentObject(ChoixLangue())
    }
}
