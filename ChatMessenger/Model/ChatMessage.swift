//
//  ChatMessage.swift
//  ChatMessenger
//
//  Created by Work on 21.10.21.
//

import Foundation

struct ChatMessage: Hashable {
    
    init(messageText: String, username: String) {
        self.messageText = messageText
        self.username = username
        if UserDefaults.standard.string(forKey: "username") == username {
            self.isMe = true
        } else {
            self.isMe = false
        }
    }
    
    let messageText: String
    let username: String
    let isMe: Bool
    let messageID = UUID()
}

let sampleConversation = [
    ChatMessage(messageText: "Hello how are you?", username: "Me"),
    ChatMessage(messageText: "I'm fine and you?", username: "Another user"),
    ChatMessage(messageText: "I'm fine as well. Thanks for asking. What are you doing right now?", username: "Me"),
    ChatMessage(messageText: "Do you have any vacation plans coming up?", username: "Another user"),
    ChatMessage(messageText: "I'm thinking about going to Spain", username: "Me"),
    ChatMessage(messageText: "What about you ?🤔", username: "Me"),
    ChatMessage(messageText: "Sounds great!", username: "Another user"),
    ChatMessage(messageText: "Thinking about flying to Sweden for christmas! 🎄", username: "Another user"),
    ChatMessage(messageText: "I would love to go to Sweden one day!", username: "Me")
]
