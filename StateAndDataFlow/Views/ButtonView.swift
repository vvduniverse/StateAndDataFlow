//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Vahtee Boo on 06.11.2021.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    var color: Color
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}
