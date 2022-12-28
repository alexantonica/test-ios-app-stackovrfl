//
//  ContentView.swift
//  Test
//
//  Created by Alexandru Antonica on 28.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var appState: AppState
    
    var body: some View {
        
        switch appState.routing.currentRoute {
        case .noInternet:
            return AnyView(NoInternetView())
            
        case .loggedOut:
            return AnyView(LoginView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var appState = AppState.shared
    
    static var previews: some View {
        setup()
        return ContentView(appState: appState)
    }
    
    static func setup() {
        appState.routing.currentRoute = .loggedOut
    }
}
