import UIKit

func printGugu(dan: Int) {
    for i in 1...9 {
        print("\(dan) * \(i) = \(dan * i)")
    }
}

printGugu(dan: 5)

//    5 * 1 = 5
//    5 * 2 = 10
//    5 * 3 = 15
//    5 * 4 = 20
//    5 * 5 = 25
//    5 * 6 = 30
//    5 * 7 = 35
//    5 * 8 = 40
//    5 * 9 = 45

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let random = rollDice()

// 함수
func call(name: String) {
    print("hello, \(name)")
}

call(name: "Jason")
// hello, Jason

// 상수에 함수 할당하고, 해당 상수를 호출 해보기
let callName = call
callName("Aha")
// hello, Aha

// 상수에 클로저 할당하고, 해당 상수 호출 해보기
let helloName = { (name: String) in
    print("hello, \(name)")
}
helloName("Oho")
// hello, Oho

// filter
let members = ["Jason", "Greg", "Tiffany"]
let nameHasT = members.filter { name in
    return name.hasPrefix("T")
}
// ["Tiffany"]


// map
let prices = [1000, 2000, 3000]
let doubledPrices = prices.map { price in
    return price * 2
}
// [2000, 4000, 6000]

// reduce
let revenues = [100, 200, 300]
let totalRevenue = revenues.reduce(0) { partialResult, next in
    return partialResult + next
}
// 600


