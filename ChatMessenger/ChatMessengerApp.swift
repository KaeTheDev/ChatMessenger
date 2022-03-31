//
//  ChatMessengerApp.swift
//  ChatMessenger
//
//  Created by Work on 21.10.21.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct ChatMessengerApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject var viewRouter = ViewRouter(pageToStartWith: UserDefaults.standard.string(forKey: "username") != nil ? .chatView : .loginView)
    
    
    var body: some Scene {
        WindowGroup {
            MotherView()
                .environmentObject(viewRouter)
        }
    }
}
