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
