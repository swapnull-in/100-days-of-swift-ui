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

var poppy1 = Dog1(name: "Poppy", breed: "Poodle")


//Class inheritance

class Dog2 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle1: Dog2 {
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
}

//Overriding methods

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise(){
        print("Woof!")
    }
}

class Poodle: Dog {
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
    
}

var poppy2 = Poodle(name: "Poppy")
poppy2.makeNoise()

//Final classes

final class Dog3 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise(){
        print("Woof!")
    }
}

//Copying objects

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Katy Perry"

print(singer.name)





