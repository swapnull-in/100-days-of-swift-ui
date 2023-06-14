import UIKit

var str = "Day 7 - Closures Part Two"

//Using closures as parameters when they accept parameters

func travel(action: (String) -> Void){
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//Using closures as parameters when they return values

func travel1(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel1 { (place : String) -> String in
    return "I'm going to \(place) in my car"
}

//Shorthand parameter names

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 {
     "I'm going to \($0) in my car"
}

//Closures with multiple parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

//Returning closures from functions

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result1 = travel()
result1("London")

let result2 = travel()("London")


//Capturing values

func travel3 () -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter) I'm going to \($0) in my car")
        counter += 1
    }
}

let resul3 = travel3()
resul3("London")
resul3("London")
resul3("London")


