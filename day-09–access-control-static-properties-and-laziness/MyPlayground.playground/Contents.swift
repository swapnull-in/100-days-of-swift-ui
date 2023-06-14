import UIKit

var str = "Day 9 – access control, static properties, and laziness"

//Initializers

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "Swapnull"


//Referring to the current instance

struct Person1 {
    var name : String
    
    init(name: String){
        print("\(name) was born")
        self.name = name
    }
}

var person = Person1(name: "Swapnil")

//Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name : String
    lazy var familyTree = FamilyTree()
    
    init(name: String){
        self.name = name
    }
}

var ed = Person2(name: "Ed")
 
//Static properties and methods

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}

var mark = Student(name: "Mark")
var taylor = Student(name: "Taylor")

print(Student.classSize)

//Access control

struct Person {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

var jason = Person(id: "1234")
var tom = Person(id: "5678")

