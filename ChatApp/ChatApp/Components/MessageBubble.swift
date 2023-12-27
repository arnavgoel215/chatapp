//
//  MessageBubble.swift
//  ChatApp
//
//  Created by Arnav Goel on 12/23/23.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    var body: some View {
        VStack(alignment: message.recipient ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.recipient ? Color("Gray") : Color("Peach"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.recipient ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.recipient ? .leading : .trailing)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.recipient ? .leading : .trailing)
        .padding(message.recipient ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "12345", text: "Hey, how's it going?", recipient: false, timestamp: Date()))
}
