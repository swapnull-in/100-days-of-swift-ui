//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Swapnil Godambe on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = [
                        "Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria",  "Poland", "Russia", "Spain", "UK", "US"
                    ].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]),
                           startPoint: .top,
                           endPoint: .bottom)
                         .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30){
                VStack {
                    Text("Tap the flag off")
                        .foregroundColor(.white)
                    
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                    }) {
                        Image(self.countries[number])
                            .renderingMode(.original)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 2)
                    }
                }
                
                Spacer()
            }
        }.alert(isPresented: $showingScore, content: {
            Alert(title: Text(scoreTitle),
                  message: Text("Your score is ???"),
                  dismissButton: .default(Text("Continue")))
        })
        
    }
    
    func flagTapped(_ number: Int) {
        if(number == correctAnswer){
            scoreTitle = "Correct"
        }else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestions() {
        countries.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
