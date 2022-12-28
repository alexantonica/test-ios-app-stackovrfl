//
//  ContentView.swift
//
//  Created by Alexandru Antonica on 25.12.2022.
//

import SwiftUI

struct LoginView: View {
    @State private var loginBtnTitle: String = "Submit"
    
    let appState = AppState.shared

    var body: some View {
        VStack {
            Button("Submit") {
                appState.routing.currentRoute = .noInternet
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {

    static var previews: some View {
        LoginView()
    }
}
