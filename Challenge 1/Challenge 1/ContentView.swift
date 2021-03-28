//
//  ContentView.swift
//  Challenge 1
//
//  Created by Anisha Lamichhane on 3/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var feet = ""
    @State private var inch = ""
    
    var feetIntoMeters : Double {
        let feets = Double(feet) ?? 0
        let inches = Double(inch) ?? 0
        let feetToMeter = feets * 0.3048
        let inchToMeter = inches * 0.0254
        let meters = feetToMeter + inchToMeter
        
        return meters
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Distance in Feet:", text: $feet)
                        .keyboardType(.decimalPad)
                    
                    TextField("Distance in Inchhes:", text: $inch)
                        .keyboardType(.decimalPad)
                }
                
//                section for displaying output
                Section( header: Text("Meter :")) {
                    Text("$\(feetIntoMeters, specifier: "%.3f") meters")
                }
            }
            .navigationBarTitle("Distance Convertor")
            .navigationBarTitle("Distance Convertor", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
