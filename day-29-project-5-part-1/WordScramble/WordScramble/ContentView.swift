//
//  ContentView.swift
//  WordScramble
//
//  Created by Swapnil Godambe on 30/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt"){
            
            if let fileContents = try? String(contentsOf: fileURL) {
                //We load the file into a string
                
                let letters = fileContents.components(separatedBy: "\n")
                let letter = letters.randomElement()
                
                let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
                
                
            }
            
        }
        
        return Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
