//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            
            HStack {
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                CountingLabel(count: userName.count)         
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }.disabled(userName.count < 3)
            }
        }
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistered.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
