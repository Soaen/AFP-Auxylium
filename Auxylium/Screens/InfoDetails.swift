//
//  InfoDetails.swift
//  Auxylium
//
//  Created by Apprenant 70 on 08/12/2021.
//

import SwiftUI
struct InfoDetails: View {
    
    var InfoDisplay : Info
    
    var body: some View {
        ZStack{
            
            Image("ContactDetailsImg")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.5)
           
            VStack {
                ScrollView {
                
                Text(InfoDisplay.title)
                    .font(.largeTitle)
                    
                
                HStack{
                    
                    Image(InfoDisplay.detailImage)
                        .resizable()
                        .frame(width: 300, height: 190)
                        .cornerRadius(15)
                        
                }
                
                HStack{
                    
                    Text(InfoDisplay.detailText)
                        .padding()
                        
                    
                }
            }.padding()
                .frame(width: 350, height: 525, alignment: .center)
                .foregroundColor(.white)
                .background(Color(UIColor(named: "DetailsColor")!))
                .cornerRadius(15)
                .offset(y: -40)
            }
        }
    }
}

struct InfoaDetails_Previews: PreviewProvider {
    static var previews: some View {InfoDetails (InfoDisplay: Infos[1])
    }
}
