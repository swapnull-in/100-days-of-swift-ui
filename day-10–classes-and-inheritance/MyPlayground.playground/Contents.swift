import UIKit

var str = "Day 10 – classes and inheritance"

//Creating your own classes

class Dog1 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

var poppy = Dog1(name: "Poppy", breed: "Poodle")


//Class inheritance

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle: Dog {
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
}

