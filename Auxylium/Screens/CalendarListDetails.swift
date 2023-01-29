//
//  CalendarListDetails.swift
//  Auxylium
//
//  Created by Apprenant 70 on 08/12/2021.
//

import SwiftUI

struct CalendarListDetails: View {
    var CalendarListDisplay : CalendarList
    var body: some View {
        ZStack{
            Image(systemName: "calendar.badge.clock")
                .resizable()
                .frame(width: 170, height: 150)
                .offset(x: 15,y: -250)
                .foregroundColor(Color(UIColor(named: "DetailsColor")!))
            
            Image("ContactDetailsImg")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.5)
            HStack{
                
                VStack {
                    
                    
                    Text(CalendarListDisplay.type)
                        .font(.title)
                    
                    HStack{
                        Text(CalendarListDisplay.date)
                    }.padding()
                    
                    HStack{
                        Text(CalendarListDisplay.desc)
                    }.frame(maxWidth: .infinity, alignment: .center)
                    
                    HStack{
                        Text(CalendarListDisplay.address)
                    }.padding()
                    
                }.padding()
                    .frame(width: 350, height: 300, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(UIColor(named: "DetailsColor")!))
                    .cornerRadius(15)
            }
            
        }
    }
}
    
    struct CalendarListDetails_Previews: PreviewProvider {
        static var previews: some View {
            CalendarListDetails (CalendarListDisplay: Calendars[0])
        }
    }
