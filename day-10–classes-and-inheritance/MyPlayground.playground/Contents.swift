import UIKit

var str = "Day 10 – classes and inheritance"

//Creating your own classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

var poppy = Dog(name: "Poppy", breed: "Poodle")


