//
//  System.swift
//
//  Created by Alexandru Antonica on 25.12.2022.
//

import Foundation

class System: ObservableObject, Equatable {

    static let shared: System = System()
    
    static func == (lhs: System, rhs: System) -> Bool {
        return false;
    }
}
