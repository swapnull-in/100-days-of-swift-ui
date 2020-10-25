import UIKit

var str = "Day 5 – functions, parameters, and errors"

//Writing functions

func printHelp() {
    
    let message = """
       Welcome to MyApp!

       Run this app inside a directory of images and
       MyApp will resize them all into thumbnails
    """
    
    print(message)
}

printHelp()

//Accepting parameters

func square(number: Int){
    print(number*number)
}

square(number: 8)

//Returning values

func square1(number: Int) -> Int {
    return number * number
}

let result = square1(number: 8)
print(result)

//Parameter labels

func sayHello(to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Tylor")

//Omitting parameter labels

func greet(_ person: String) {
    print("Hello \(person)")
}

greet("Tylor")


//Default parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello \(person)")
    }else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)


