//
//  ChatList.swift
//  Auxylium
//
//  Created by Apprenant 70 on 09/12/2021.
//

import SwiftUI

struct ChatList: View {

    @State private var searchText = ""

    var messageAffiche: Message

    var searchResults: [Message] {
        if searchText.isEmpty {
            return messages
        } else {
            return messages.filter { $0.name.contains(searchText) || $0.name.contains(searchText)}
        }
    }
        var body: some View {
        NavigationView {
            ScrollView {
            ForEach (searchResults, id: \.self) { message in
                
                NavigationLink(destination: MessageDetails(messageAffiche: message)) {

                    HStack{
                        Image(message.photo)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                            .padding()

                        VStack(alignment: .leading) {
                            
                            Text(message.name)
                                .font(.title)
                                
                            Text(message.chatPreview)
                                .multilineTextAlignment(.leading)
                                .lineLimit(1)
                                .font(.title2)
                                .padding(.horizontal)

                        }
                    }
                    .frame(width: 300, height: 80, alignment: .leading)
                }
                .padding(.horizontal)
                .frame(width: 350, height: 80, alignment: .leading)
                    .foregroundColor(.white)
                    .background(Color(UIColor(named: "Global")!))
                    .cornerRadius(15)
            }
            .searchable(text: $searchText)
            .navigationTitle("Messages")
                .navigationBarItems(trailing:
                    NavigationLink(destination: Parameter(), label: {
                            Image(systemName: "gearshape.fill")
                        }))
        }.shadow(radius: 20)
        }
            
    }
}


struct ChatList_Previews: PreviewProvider {
    static var previews: some View {
        ChatList(messageAffiche: messages[0])
    }
}
