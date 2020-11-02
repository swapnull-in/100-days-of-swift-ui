import UIKit

var str = "Day 13 – Swift review, day one"

//Variables and constants

//var name = "Tim McGraw"
//    name = "Romeo"

//let name = "Tim McGraw"
//    name = "Romeo"

//Types of Data

var name: String
    name = "Tim McGraw"

var age: Int
    age = 25

var latitude: Double
latitude = 36.166667

var longitude: Double
longitude = -123456786.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat = false

//Operators

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var a1 = 1.1
var b1 = 2.2
var c1 = a1 + b1

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

c1 > 3
c1 >= 3
c1 > 4
c1 < 4

var name3 = "Tim McGraw"
name3 == "TIM McGraw"
name3 != "TIM McGraw"

var stayOutTooLate1 = true
stayOutTooLate1
!stayOutTooLate1

//String interpolation

var name4 = "Tim McGraw"
"Your name is \(name4)"

"Your name is \(name), your age is \(age) and your latitude is \(latitude)"

"Your age is \(age) and in another \(age) years you will be \(age * 2)"

//Arrays

var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

songs[0]
songs[1]
songs[2]

type(of: songs)

var songs1 = [String]()
//songs1[0] = "Shake it Off"

var songs2 = ["Shake it Off", "You Belong with Me", "Back to December"]
var songs3 = ["Ashes of Eden", "I Will Not Bow", "Bood"]

var both1 = songs2 + songs3
both1 += ["Everything has Changed"]

print(both1)

//Dictionaries

//var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]

var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

    person["middle"]
    person["month"]


//Conditional statements

var action: String
var person1 = "hater"

if person1 == "hater" {
    action = "hate"
} else if person1 == "player" {
    action = "play"
} else {
    action = "cruise"
}

var action2: String
var stayOutTooLate2 = true
var nothingInBrain2 = true

if stayOutTooLate2 && nothingInBrain2 {
    action2 = "cruise"
}

//Loops

for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str1 = "Fakers gonna"

for _ in 1 ... 5 {
    str1 += " fake"
}

print(str1)


var songs4 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs4 {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ..< people.count {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0 ..< people.count {
    var str = "\(people[i]) gonna"

    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }

    print(str)
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    
    counter += 1
    
    if counter == 51 {
        break
    }
}

var songs5 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs5 {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}

