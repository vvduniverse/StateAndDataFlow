//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import Combine

final class UserManager: ObservableObject {
    
    struct User {
        
    }
    
    @Published var user = User()
    
    var isRegistered = false
    var name = ""
    
    var nameValidation: Bool {
        name.count < 3
    }
    
}

