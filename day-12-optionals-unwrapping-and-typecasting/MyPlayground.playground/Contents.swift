import UIKit

var str = "Day 12 – optionals, unwrapping, and typecasting"

//Handling missing data

var age: Int? = nil
age = 30

//Unwrapping optionals

var name: String? = nil
//name = "Swapnil"

if let unwrapped = name {
    print("\(unwrapped.count) letters")
}else {
    print("Missing Name")
}

//Unwrapping with guard

func greet(_ name: String?){
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello \(unwrapped)")
}

greet(nil)
greet("Swapnil")

//Force unwrapping

var data = "5"
var num = Int(data)!

//Implicitly unwrapped optionals

let age1: Int! = nil

//Nil coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Tylor Swift"
    }else {
        return nil
    }
}

let name1 = username(for: 15) ?? "Anonymous"





