//
//  ViewRouting.swift
//
//  Created by Alexandru Antonica on 25.12.2022.
//

import Foundation

enum MainRoutes: String {
    case loggedOut
    case noInternet
}

class ViewRouting: ObservableObject, Equatable {
    
    static let shared = ViewRouting()
    
    @Published var currentRoute: MainRoutes {
        willSet {
            print("Setting current route to \(newValue)")
            UserDefaults.standard.set(newValue.rawValue, forKey: "currentRoute")
        }
    }
    
    static func == (lhs: ViewRouting, rhs: ViewRouting) -> Bool {
        return lhs.currentRoute == rhs.currentRoute
    }
    
    private init() {
        currentRoute = .loggedOut
    }    
}
