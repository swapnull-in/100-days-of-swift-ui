import UIKit

var str = "Swift review, day two"

//Functions

func favouriteAlbum(name: String){
    print("My favourite is \(name)")
}

favouriteAlbum(name: "Fearless")


func printAlbumRelease(name: String, year: Int){
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

func countLettersInString(string: String){
    print("\(string) has \(string.count) number of letters")
}

countLettersInString(string: "Hello")

func countLettersInString(myString str: String){
    print("\(str) has \(str.count) number of letters")
}

countLettersInString(myString: "Swapnil")

func countLettersInString(_ str: String){
    print("\(str) has \(str.count) number of letters")
}

countLettersInString("Swapnil")

func countLetters(in string: String){
    print("\(string) has \(string.count) number of letters")
}

countLetters(in: "Hello")



func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?")
}


//Optionals

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}






