import UIKit

var str = "Day 4 – loops, loops, and more loops"

//For loops

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Moon Landing", "The Afterlove", "Back to Badlam"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}


//While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")


//Repeat loops

var number1 = 1

repeat {
    print(number1)
    number1 += 1
} while number1 <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false


