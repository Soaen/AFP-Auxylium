//
//  MessageDetails.swift
//  Auxylium
//
//  Created by Apprenant 70 on 09/12/2021.
//

import SwiftUI

struct MessageDetails: View {
    var messageAffiche: Message
    var body: some View {
        ZStack {
            Image("ImgAccueilWithAuxylium")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.4)
            
            VStack {
                VStack {
                    ConversationBleue(name2: "Bonjour, je vous contacte suite à mon inscription sur Auxylium.")
                    ConversationVerte(name2: "Oui, j'ai reçu votre candidature.")
                    ConversationBleue(name2: "Quand peut-on se voir pour en discuter ?")
                    ConversationVerte(name2: "Je vous dit ça.")
                    
                    
                    
                }.frame(alignment: .top)
                Spacer()
                VStack{
                    Image("FakeClavier")
                        .resizable()
                        .ignoresSafeArea()
                }
            }
        }.navigationBarTitle("\(messageAffiche.name)", displayMode: .inline)
    }
}
struct ConversationBleue: View {
    var name2: String
    var body: some View {
        HStack {
            Text("\(name2)")
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.leading)
                .padding()
                .frame(width: 250)
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue))
        }.padding(.leading, 7.0).frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            alignment: .topLeading
        )
    }
}
struct ConversationVerte: View {
    var name2: String
    var body: some View {
        HStack {
            Text(name2)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.trailing)
                .padding()
                .frame(width: 250)
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.green))
        }.padding(.trailing, 7.0).frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            alignment: .topTrailing
        )
    }
}

struct MessageDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Group {
                MessageDetails(messageAffiche: messages[0])
                    .previewDevice("iPhone 12")
            }
        }
    }
}
