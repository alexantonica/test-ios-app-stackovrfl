//
//  UserData.swift
//
//  Created by Alexandru Antonica on 25.12.2022.
//

import Foundation


class UserData: ObservableObject, Equatable {
    
    static let shared = UserData()
    
    var loggedIn: Bool = false;
    
    static func == (lhs: UserData, rhs: UserData) -> Bool {
        return lhs.loggedIn == rhs.loggedIn
    }
    
}
