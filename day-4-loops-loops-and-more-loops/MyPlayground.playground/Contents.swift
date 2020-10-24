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

