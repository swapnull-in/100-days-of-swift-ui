//
//  ContentView.swift
//  BetterRest
//
//  Created by Swapnil Godambe on 09/01/21.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var sleepAmount = 8.0
    @State private var wakeUp = Date()
    
    var body: some View {
//        Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
//            Text("\(sleepAmount, specifier: "%g") hours")
//        }
        
        DatePicker("", selection: $wakeUp, in: Date()...).labelsHidden()
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
