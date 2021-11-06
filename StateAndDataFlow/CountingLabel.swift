//
//  CounLabel.swift
//  StateAndDataFlow
//
//  Created by Vahtee Boo on 06.11.2021.
//

import SwiftUI

struct CountingLabel: View {
    
    var count: Int
    
    var body: some View {
        Text("\(count)")
            .padding(.trailing, 40)
            .foregroundColor(count < 3 ? .red : .green)
    }
}

struct CounLabel_Previews: PreviewProvider {
    static var previews: some View {
        CountingLabel(count: 3)
    }
}
