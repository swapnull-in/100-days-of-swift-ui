//
//  ContentView.swift
//  Animations
//
//  Created by Swapnil Godambe on 31/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        
        Button("Tap Me") {
            withAnimation {
                self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0.0, y: 1.0, z: 0.0))
        
        /*
         VStack {
         Stepper("Scale amount", value: $animationAmount.animation(
         Animation.easeOut(duration: 1)
         .repeatCount(3, autoreverses: true)
         ), in: 1...10)
         
         Spacer()
         
         Button("Tap Me") {
         self.animationAmount += 1
         }
         .padding(40)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         }
         */
        
        /*
         Button("Tap Me") {
         self.animationAmount += 1
         }
         .padding(50)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .overlay(
         Circle()
         .stroke(Color.red)
         .scaleEffect(animationAmount)
         .opacity(Double(2 - animationAmount))
         .animation(
         Animation
         .easeInOut(duration: 1)
         .repeatForever(autoreverses: false)
         )
         ).onAppear {
         self.animationAmount = 2
         }
         */
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
