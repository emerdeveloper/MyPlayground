import UIKit

var str: String = "Hello, playground..."

let myName: String = "Emerson"
let myLastName: String = "Morales"
let myFullName: String = "\(myName) Gonzalez \(myLastName)"

var mySalary: Int = 0
mySalary = 1

func calculateBMI(weight: Double, height: Double) -> Double {
    return weight / pow(height, 2)
}

func loop(from: Int, to: Int) {
    print("Start loop::::")
    for number in from..<to where number % 2 == 0 {
        print(number)
    }
}

func songBeer(from: Int, to: Int) -> String {
    print("Start song::::")
    var lyrics: String = "";
    for index in  stride(from: from, through: to, by: -1) {
        lyrics += "\n \(index) bottles of beer on the wall, \(index) bottles of beer. \n Take one down and pass it around, \((index - 1)) bottles of beer on the wall. \n"
    }
    return lyrics
}

func songBeerNew(from: Int, to: Int) -> String {
    print("Start song::::")
    var lyrics: String = "";
    for index in  (from...to).reversed() {
        lyrics += "\n \(index) bottles of beer on the wall, \(index) bottles of beer. \n Take one down and pass it around, \((index - 1)) bottles of beer on the wall. \n"
    }
    return lyrics
}

func fibonachi(until: Int){
    print("Fibonachi::::")
    var start: Int = -1
    var startTwo: Int = 1
    for _ in 0...until {
        let number =  (start + startTwo)
        start = startTwo
        startTwo = number
        print(number)
    }
}

fibonachi(until: 10)

print(songBeerNew(from: 1, to: 10))

loop(from: 1, to: 20)

print(calculateBMI(weight: 76.5 , height: 1.70))

//**************STRUCTURES**********************

struct MyTown {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(nameTown: String, people: [String], stats: [String: Int]) {
        name = nameTown
        citizens = people
        resources = stats
    }
    
    func fortity() {
        print("Defences increased!")
    }
}

var myTown = MyTown(nameTown: "Planeta Rica", people: ["Emerson", "Tatiana", "Mónica"], stats: ["Grain": 100, "Ore": 420, "wool": 500])
print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grains")
myTown.citizens.append("Roger")
print(myTown.citizens)
myTown.fortity()
