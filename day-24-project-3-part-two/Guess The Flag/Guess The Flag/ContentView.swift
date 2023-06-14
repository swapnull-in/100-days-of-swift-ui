//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Swapnil Godambe on 04/01/21.
//

import SwiftUI

struct FlagImage: ViewModifier {
    
    func body(content: Content) -> some View {
        content.clipShape(Capsule())
            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
            .shadow(color: Color.black, radius: 2)
    }
    
}

extension View {
    func imageStyle() -> some View {
        self.modifier(FlagImage())
    }
}

struct ContentView: View {
    @State private var countries = [
                        "Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria",  "Poland", "Russia", "Spain", "UK", "US"
                    ].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreMessage = "Your score is ???"
    @State private var userScore = 0

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
                    
                    Text("Score: \(userScore)")
                        .foregroundColor(.white)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                    }) {
                        Image(self.countries[number])
                            .renderingMode(.original)
                            .imageStyle()
                    }
                }
                
                Spacer()
            }
        }.alert(isPresented: $showingScore, content: {
            Alert(title: Text(scoreTitle),
                  message: Text(scoreMessage),
                  dismissButton: .default(Text("Continue")){
                
                self.askQuestion()
            })
        })
        
    }
    
    func flagTapped(_ number: Int) {
        if(number == correctAnswer){
            userScore += 1
            scoreTitle = "Correct"
            scoreMessage = "Your score is \(userScore)"
        }else {
            scoreTitle = "Wrong"
            scoreMessage = "That’s the flag of \(countries[number])"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
