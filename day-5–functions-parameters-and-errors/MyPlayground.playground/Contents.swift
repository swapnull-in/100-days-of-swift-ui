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




