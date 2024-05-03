//
//  ContentView.swift
//  RCControllerApp
//
//  Created by Lewin Sieben on 03.05.24.
//

import SwiftUI

struct ContentView: View {
    @State var direction = Float(1.0)
    @State var speed = Float(1.0)
    
    var body: some View {
        NavigationStack {
            HStack {
                Text("Connection Status")
                    .font(.title3)
                    .fontDesign(.rounded)
                
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .frame(width: 100, height: 30)
                    .foregroundColor(Color.lightGreen)
                
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("\(direction, specifier: "%.2f")")
                WheelControl(value: $direction, range: -45.0...45.0, orientation: .horizontal)
                    .frame(maxHeight: 80)
            }
            .padding()
            
            VStack(alignment: .leading, content: {
                WheelControl(value: $speed, range: -100.0...100.0)
                    .frame(maxWidth: 80, maxHeight: 150)
            })
        
            
          
            .navigationTitle("RC-Contoller")
                
        }
        
        
    }
}

#Preview {
    ContentView()
}
