//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct StarterView: View {
    

    
    @EnvironmentObject private var user: UserManager
    
//    @AppStorage("userregistered") var userreg: Bool = false
    
    var body: some View {
        Group {
            if user.isRegistered {
//                if userreg {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
