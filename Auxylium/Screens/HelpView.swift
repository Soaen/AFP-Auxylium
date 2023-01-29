//
//  HelpView.swift
//  Auxylium
//
//  Created by Apprenant 70 on 14/12/2021.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        ZStack{
                   
                   Image("ContactDetailsImg")
                       .resizable()
                       .ignoresSafeArea()
                       .opacity(0.6)
                   
                   VStack(alignment: .leading, spacing: 12) {
                       
                       HStack{
                           
                           Image(systemName: "lifepreserver")
                               .resizable()
                               .frame(width: 80, height: 80)
                               .offset(y: -20)
                           
                           
                           Text ("Aide")
                               .font(.largeTitle)
                               .bold()
                               .offset(y: -20)
                       }
                       HStack{
                           
                           Image(systemName:"exclamationmark.triangle")
                               .unredacted()
                           Text("Signaler un probléme")
                           
                       }
                       
                       HStack{
                           
                           Image(systemName: "checkerboard.shield")
                           Text ("Demande d'assistance")
                       }
                       
                       HStack{
                           Image(systemName: "lightbulb")
                               .unredacted()
                           Text("Aide à l'utilisation ")
                       }
        }.padding()
                       .frame(width: 350, height: 350, alignment: .center)
                       .foregroundColor(.white)
                       .background(Color(UIColor(named: "DetailsColor")!))
                       .cornerRadius(15)
                       .offset(y: -40)
                   
               }
           }
       }
          

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
