import UIKit

var str = "Hacking with Swift - Day 2"

//Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

//Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

//Tuples
var name = (first: "Swapnil", last: "Godambe")
name.0
name.first
//name.age = 30


//Tuple
let address = (house: 303, wing: "D", society: "Kutir", city: "Kalyan")

//Set
let set = Set(["engineer", "doctor", "lawyer"])

//Array
let cousins = ["Swapnil", "Amita", "Tejaswee", "Aniket", "Harshal", "Bhavika"]


//Dictonary
let heights = [
    "Taylor Swift" : 1.78,
    "Ed Sheeran" : 1.73
]

heights["Taylor Swift"]

let favouriteIceCream = [
    "Swapnil" : "Vanilla",
    "Amita" : "Chocolate"
]

favouriteIceCream["Swapnil"]
favouriteIceCream["Tejaswee", default: "Unknown"]


//Dictonary
var teams = [String: String]()
teams["Swapniil"] = "Mumbai Indians"

//Array
var results = [Int]()

//Set
var words = Set<String>()
var numbers = Set<Int>()

//Alrernate ways to initiate empty dictonary and array
var scores = Dictionary<String, Int>()
var resuls = Array<Int>()


//Enumeration
let result = "Failure"
let result2 = "Failed"
let result3 = "Fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

//Enum associated values

enum Activiy {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activiy.talking(topic: "Cricket")




