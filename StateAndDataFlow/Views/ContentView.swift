//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct ContentView: View {
    
//    @AppStorage("username") var username: String = ""
//    @AppStorage("userregistered") var userreg: Bool = false
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 200)
            Spacer()
            ButtonView(color: .red, title: timer.buttonTitle) {
                timer.startTimer()
            }
            Spacer()
            ButtonView(color: .blue, title: "LogOut") {
                userManager.isRegistered.toggle()
                userManager.name = ""
//                username = ""
//                userreg = false
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}


