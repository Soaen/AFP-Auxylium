//
//  Calendar.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import SwiftUI

struct Calendar: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack() {
                    ForEach(Calendars) { CalendarList in
                        NavigationLink(destination: CalendarListDetails(CalendarListDisplay: CalendarList),
                                       label: {
                            HStack {
                                VStack {
                                    Text(CalendarList.type)
                                        .font(.title)
                                    Text(CalendarList.date)
                                }.padding()
                                    .frame(width: 350, height: 130, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(Color(UIColor(named: "Global")!))
                                    .cornerRadius(15)
                            }.shadow(radius: 20)
                        })
                    }
                }
                .frame(maxWidth: .infinity)
            }.navigationTitle("Calendrier")
                .navigationBarItems(trailing:
                                        NavigationLink(destination: Parameter()
                                                       , label: {
                    Image(systemName: "gearshape.fill")
                })
                )
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
