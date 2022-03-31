//
//  DatabaseConstants.swift
//  ChatMessenger
//
//  Created by Work on 21.10.21.
//

import Foundation
import Firebase

let databaseRoot = Database.database().reference()
let databaseChats = databaseRoot.child("chats")

