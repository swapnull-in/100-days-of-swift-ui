import UIKit

var str = "Day 8 – structs, properties, and methods"

//Creating your own structs

//struct Sport {
//    var name: String
//}
//
//var tennis = Sport(name: "Tennis")
//print(tennis.name)
//
//tennis.name = "Lawn Tennis"


//Computed properties

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        }else {
            return "\(name) is not an Olympic sport"
        }
    }
}

var chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//Property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//Methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

var london = City(population: 9_000_000)
london.collectTaxes()

//Mutating methods

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

//Properties and methods of strings

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

//Properties and methods of arrays

var toys = ["Woody"]
print(toys.count)

toys.append("Buzz")
toys.firstIndex(of: "Buzz")

print(toys.sorted())
toys.remove(at: 0)


