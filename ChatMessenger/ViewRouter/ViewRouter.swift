//
//  ViewRouter.swift
//  ChatMessenger
//
//  Created by Work on 21.10.21.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .loginView
    
    init(pageToStartWith: Page) {
        currentPage = pageToStartWith
    }
}
