//
//  ConnectionIndicator.swift
//  RCControllerApp
//
//  Created by Lewin Sieben on 03.05.24.
//

import SwiftUI

struct ConnectionIndicator: View {
    
    var title: String
    var foregroundColor: Color
    var backgroundColor: Color
    
    var body: some View {
        
        HStack {
                Text(title).font(.footnote)
                    .textCase(.uppercase)
                    .padding(10)
                    .foregroundColor(foregroundColor)
                    .bold()
                    .background(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        .foregroundColor(backgroundColor))
                    
            Spacer()
            Text("Connected to Device")
                .font(.footnote)
                .textCase(.uppercase)
        }
    }
}

