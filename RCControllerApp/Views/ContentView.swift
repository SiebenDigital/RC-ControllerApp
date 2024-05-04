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
    
<<<<<<< HEAD
    var btController = BTController()
    
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
                    .simultaneousGesture(
                                   DragGesture(minimumDistance: 0)
                                       .onChanged({ _ in
                                           
                                       })
                                       .onEnded({ _ in
                                           direction = 1.0
                                       })
                               )
            }
            .padding()
            
            VStack(alignment: .leading, content: {
                WheelControl(value: $speed, range: -100.0...100.0)
                    .frame(maxWidth: 80, maxHeight: 150)
                    .simultaneousGesture(
                                   DragGesture(minimumDistance: 0)
                                       .onChanged({ _ in
                                           
                                       })
                                       .onEnded({ _ in
                                           speed = 1.0
                                       })
                               )

            })
            .navigationTitle("RC-Contoller")                
        }
        .onAppear() {
            btController.startUp()
=======
    @State var connection: ConnectionStates = ConnectionStates.connectionPending
    
    var body: some View {
        
        NavigationStack {
            
            switch connection {
            case .connected:
                ConnectionIndicator(title: "Connected", foregroundColor: Color.myGreen, backgroundColor: Color.lightGreen)
                .padding()
            case .connectionPending:
                ConnectionIndicator(title: "Connection Pending", foregroundColor: Color.myYellow, backgroundColor: Color.lightYellow)
                .padding()
            case .notConnected:
                ConnectionIndicator(title: "Not Connected", foregroundColor: Color.myRed, backgroundColor: Color.lightRed)
                .padding()
            }
            
            
            Spacer()
            HStack {
                VStack(alignment: .center) {
     
                    WheelControl(value: $direction, range: -45.0...45.0, orientation: .horizontal)
                        .frame(width: 200, height: 80)
                }
                .padding()
                
                VStack(alignment: .trailing
                       , content: {
            
                    WheelControl(value: $speed, range: -100.0...100.0)
                        .frame(width: 80, height: 150)
                }).padding()
            }.padding()
            
          
            .navigationTitle("RC-Contoller")
                
>>>>>>> d0016aa (ConnectionIndicator)
        }
    }
}



#Preview {
    ContentView()
}


