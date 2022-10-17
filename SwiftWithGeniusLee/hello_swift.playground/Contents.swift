import UIKit

//func printGugu(dan: Int) {
//    for i in 1...9 {
//        print("\(dan) * \(i) = \(dan * i)")
//    }
//}
//
//printGugu(dan: 5)
//
////    5 * 1 = 5
////    5 * 2 = 10
////    5 * 3 = 15
////    5 * 4 = 20
////    5 * 5 = 25
////    5 * 6 = 30
////    5 * 7 = 35
////    5 * 8 = 40
////    5 * 9 = 45
//
//func rollDice() -> Int {
//    return Int.random(in: 1...6)
//}
//
//let random = rollDice()
//
//// 함수
//func call(name: String) {
//    print("hello, \(name)")
//}
//
//call(name: "Jason")
//// hello, Jason
//
//// 상수에 함수 할당하고, 해당 상수를 호출 해보기
//let callName = call
//callName("Aha")
//// hello, Aha
//
//// 상수에 클로저 할당하고, 해당 상수 호출 해보기
//let helloName = { (name: String) in
//    print("hello, \(name)")
//}
//helloName("Oho")
//// hello, Oho
//
//// filter
//let members = ["Jason", "Greg", "Tiffany"]
//let nameHasT = members.filter { name in
//    return name.hasPrefix("T")
//}
//// ["Tiffany"]
//
//
//// map
//let prices = [1000, 2000, 3000]
//let doubledPrices = prices.map { price in
//    return price * 2
//}
//// [2000, 4000, 6000]
//
//// reduce
//let revenues = [100, 200, 300]
//let totalRevenue = revenues.reduce(0) { partialResult, next in
//    return partialResult + next
//}
//// 600


struct Album {
        // 멤버 변수들
        // stored property
    let title: String
    let artist: String
    var isReleased = false
    
    func description() -> String {
        return "\(title) by \(artist)"
    }
    
        // 구조체 내부 멤버 변수의 값을 변경하는 경우, mutating 키워드 이용
    mutating func release() {
        self.isReleased = true
    }
}

var easyOnMe = Album(title: "Easy On Me", artist: "Adele")
print(easyOnMe.description())
// Easy On Me by Adele

print(easyOnMe.isReleased)
easyOnMe.release()
print(easyOnMe.isReleased)
// false
// true


class Employee {
    var name: String
    var hours: Int
    
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
    
    func work() {
        print("I'm working now...")
    }
    
    func summary() {
        print("I work \(self.hours) hours a day. ")
    }
}

class iOSDeveloper: Employee {
    
    override func work() {
        print("I'm developing iOS app now.")
    }
    
    override func summary() {
        print("I work \(self.hours/2) hours a day.")
    }
}

struct Phone {
    var modelName: String
    var manufacturer: String
    var version: Double = 1.0
}

let normalWorker = Employee(name: "Kim", hours: 8)
normalWorker.work()
normalWorker.summary()
//    I'm working now...
//    I work 8 hours a day.

let developer = iOSDeveloper(name: "Jason", hours: 8)
developer.work()
developer.summary()
//    I'm developing iOS app now.
//    I work 4 hours a day.

// Reference vs. Copy
var iPhone1 = Phone(modelName: "iPhone 13", manufacturer: "Apple")
var iPhone2 = iPhone1
iPhone2.modelName = "iPhone 14"
print(iPhone2.modelName)
print(iPhone1.modelName)
//    iPhone 14
//    iPhone 13

var jrDeveloper1 = iOSDeveloper(name: "John", hours: 8)
var jrDeveloper2 = jrDeveloper1
jrDeveloper1.name = "Billy"
print(jrDeveloper1.name)
print(jrDeveloper2.name)
//    Billy
//    Billy

struct Watch {
    let model: String
    let manufacturer: String
    
    var description: String {
        return "\(model) by \(manufacturer)"
    }
}

struct Person {
    let firstName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

let appleWatch = Watch(model: "Watch 7", manufacturer:  "Apple")
print(appleWatch.description)
// Watch 7 by Apple

let jason = Person(firstName: "Jason", lastName: "Lee")
print(jason.fullName)
// Jason Lee

protocol Coach {
    var name: String { get set }
    var currentTeam: String { get }
    func training()
    func direct()
}

struct Mourinho: Coach {
    var name: String = "Jose Mourinho"
    var currentTeam: String = "AS Roma"
    
    func training() {
        print("Traing Player")
    }
    
    func direct() {
        print("Direct Game")
    }
}

let mourinho = Mourinho()
print("\(mourinho.name), \( mourinho.currentTeam)")
mourinho.training()
mourinho.direct()

//    Jose Mourinho, AS Roma
//    Traing Player
//    Direct Game
