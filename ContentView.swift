//
//  ContentView.swift
//  BLE comm demo
//
//  Created by Daniel Coburn on 7/12/24.
//

import SwiftUI
import CoreBluetooth

struct ContentView: View {
    @State private var numberToSend: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter number to send", text: $numberToSend)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                BLEManager.shared.sendData(number: numberToSend)
            }) {
                Text("Send")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
