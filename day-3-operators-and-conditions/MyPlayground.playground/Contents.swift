import UIKit

var str = "Hello, playground"

//Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let reminder = 13 % secondScore


//Operator overloading

let meaningOfLife = 42
let doubleMeaningOfLife = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


//Compound assignment operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//Comparison operators

let firstScore1 = 6
let secondScore1 = 4

firstScore1 == secondScore1
firstScore1 != secondScore1

firstScore1 < secondScore1
firstScore1 >= secondScore1

"James" >= "Blunt"


//Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
   print("Aces – lucky!")
}
else if firstCard + secondCard == 21 {
    print("Blackjack!")
}else {
    print("Regular cards")
}

//Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}



