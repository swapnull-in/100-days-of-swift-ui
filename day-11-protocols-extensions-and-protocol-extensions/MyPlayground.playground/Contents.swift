import UIKit

var str = "Day 11 – protocols, extensions, and protocol extensions"

//Protocols

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable){
    print("My ID is \(thing.id)")
}

//Protocol inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee : Payable, NeedsTraining, HasVacation {}

//Extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
print(number.squared())

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

