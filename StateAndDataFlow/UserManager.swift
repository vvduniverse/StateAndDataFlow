//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import Combine

final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    struct User {
        var isRegistered = false
        var name = ""        
    }
    

    
    
}

