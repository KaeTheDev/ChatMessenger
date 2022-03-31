//
//  ChatView.swift
//  ChatMessenger
//
//  Created by Work on 21.10.21.
//

import SwiftUI

struct ChatView: View {
    
    @StateObject var chatController = ChatController()
    
    @State var newMessageInput = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollViewReader { scrollView in
                    ScrollView {
                        ForEach(chatController.messages, id: \.messageID) { message in
                            ChatRow(message: message)
                                .id(chatController.messages.firstIndex(of: message))
                        }
                            .onAppear(perform: {
                                scrollView.scrollTo(chatController.messages.count-1)
                            })
                    }
                }
                Spacer()
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("LightGrayColor"), lineWidth: 2)
                        .padding()
                    HStack {
                        TextField("New message...", text: $newMessageInput, onCommit: {
                            guard !newMessageInput.isEmpty else {
                                print("New message input is empty.")
                                return
                            }
                            chatController.sendMessage(messageText: newMessageInput)
                            newMessageInput = ""
                        })
                            .padding(30)
                        Button(action: {
                            guard !newMessageInput.isEmpty else {
                                print("New message input is empty.")
                                return
                            }
                            chatController.sendMessage(messageText: newMessageInput)
                            newMessageInput = ""
                        }) {
                            Image(systemName: "paperplane")
                                .imageScale(.large)
                                .padding(30)
                        }
                    }
                }
                    .frame(height: 70)
            }
                .navigationTitle("Chat App")
                .onAppear {
                    chatController.receiveMessages()
                }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            
    }
}



