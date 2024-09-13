//
//  ContentView.swift
//  WatchOSCounter Watch App
//
//  Created by Michael Piccerillo on 9/13/24.
//

import SwiftUI
import WatchKit


struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        
        Text("Apple Watch Counter")
            .font(.headline)
            .padding()
        
        Text("\(counter)")
            .font(.largeTitle)
            .padding()
        
        
        HStack{
            Button(action: {
                counter += 1
                WKInterfaceDevice.current().play(.click)
            }) {
                Text("+")
                    .font(.title)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            }
            
            Button(action: {
                counter -= 1
                WKInterfaceDevice.current().play(.click)
                
            }) {
                Text("-")
                    .font(.title)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
