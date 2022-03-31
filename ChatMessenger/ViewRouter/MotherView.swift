//
//  MotherView.swift
//  ChatMessenger
//
//  Created by Work on 21.10.21.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            switch viewRouter.currentPage {
            case .loginView:
                    LoginView()
                case .chatView:
                    ChatView()
                        .transition(.scale)
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter(pageToStartWith: .loginView))
    }
}
