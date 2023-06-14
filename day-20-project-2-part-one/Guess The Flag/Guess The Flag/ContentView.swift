//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Swapnil Godambe on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            self.showingAlert = true
        }.alert(isPresented: $showingAlert, content: {
            Alert(title: Text("Hello SwiftUI"),
                  message: Text("This is some details message"),
                  dismissButton: .default(Text("OK")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
