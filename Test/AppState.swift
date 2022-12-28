//
//  UserSettings.swift
//
//  Created by Alexandru Antonica on 25.12.2022.
//

import Foundation

class AppState: ObservableObject, Equatable {
    
    static let shared = AppState();
    
    @Published public var userData: UserData
    @Published public var routing: ViewRouting
    @Published public var system: System
    
    
    private init() {
        userData = UserData.shared
        routing = ViewRouting.shared
        system = System.shared
    }

    static func == (lhs: AppState, rhs: AppState) -> Bool {
        return lhs.userData == rhs.userData
        && lhs.routing == rhs.routing
        && lhs.system == rhs.system
    }
}
