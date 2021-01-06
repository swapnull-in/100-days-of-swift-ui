//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Swapnil Godambe on 05/01/21.
//

import SwiftUI

/*
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}
*/

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    //@State private var useRedText = false
    
//    let motto1 = Text("Draco dormiens")
//    let motto2 = Text("nunquam titillandus")
    
//    struct CapsuleText: View {
//        var text: String
//
//        var body: some View {
//            Text(text)
//                .font(.largeTitle)
//                .padding()
//                .foregroundColor(.white)
//                .background(Color.blue)
//                .clipShape(Capsule())
//        }
//    }
     
    var body: some View {
        
//        Text("Hello, world!")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//            .edgesIgnoringSafeArea(.all)
        
//        Button("Hello World"){
//
//        }
//        .background(Color.red)
//        .frame(width: 200, height: 200)
//        .background(Color.blue)
        
//        Text("Hello World")
//            .padding()
//            .background(Color.red)
//            .padding()
//            .background(Color.blue)
//            .padding()
//            .background(Color.green)
//            .padding()
//            .background(Color.yellow)
        
//        Button("Toggle Red"){
//            self.useRedText.toggle()
//        }
//        .foregroundColor(useRedText ? .red : .blue)
        
//        VStack {
//            Text("Text 1")
//                .font(.largeTitle)
//            Text("Text 2")
//            Text("Text 3")
//            Text("Text 4")
//        }.font(.title)
        
//        VStack {
//            motto1
//                .foregroundColor(.red)
//            motto2
//                .foregroundColor(.blue)
//        }
        
//        VStack(spacing: 10) {
//            CapsuleText(text: "Hello 1")
//            CapsuleText(text: "Hello 2")
//        }
        
//        Text("Hello World")
//            .titleStyle()
        
        Color.blue
            .frame(width: 200, height: 200)
            .watermarked(with: "Hacking with Swift") 
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone X"))
    }
}
