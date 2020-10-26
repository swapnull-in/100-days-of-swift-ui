import UIKit

var str = "Day 6: Closures, part one"

//Creating basic closures

let driving = {
    print("I'm driving my car")
}

driving()

//Accepting parameters in a closure

let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving1("London")

//Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)


