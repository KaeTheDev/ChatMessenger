//
//  ChatRow.swift
//  ChatMessenger
//
//  Created by Work on 21.10.21.
//

import SwiftUI

struct ChatRow: View {
    
    let message: ChatMessage
    
    var body: some View {
        HStack {
            if message.isMe {
                Spacer()
            }
            VStack(alignment: .leading) {
                Text(message.username)
                    .font(.footnote)
                    .foregroundColor(message.isMe ? Color("LightGrayColor") : .gray)
                Text(message.messageText)
                    .font(.body)
                    .foregroundColor(message.isMe ? .white : .black)
                    .lineLimit(nil)
            }
                .padding(10)
                .background(message.isMe ? Color.blue : Color("LightGrayColor"))
                .cornerRadius(10)
                .frame(maxWidth: 280, alignment: message.isMe ? .trailing : .leading)
            if !message.isMe {
                Spacer()
            }
        }
            .padding()
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(message: sampleConversation[2])
    }
}
