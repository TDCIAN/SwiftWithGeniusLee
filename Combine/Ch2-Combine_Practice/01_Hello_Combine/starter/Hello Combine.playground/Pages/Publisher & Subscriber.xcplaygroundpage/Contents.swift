//: [Previous](@previous)

import Foundation
import Combine

// Publisher & Subscriber
// MARK: just
let just = Just(1000)
let subscription1 = just.sink { value in
    print("just - Received Value: \(value)")
}
// MARK: arrayPublisher
let arrayPublisher = [1, 3, 5, 7, 9].publisher
let subscription2 = arrayPublisher.sink { value in
    print("arrayPublisher - Received Value: \(value)")
}

// MARK: assign
class MyClass {
    var property: Int = 0 {
        didSet {
            print("Did set property to \(property)")
        }
    }
}

let object = MyClass()
let subscription3 = arrayPublisher.assign(to: \.property, on: object)
print("assign - Final Value: \(object.property)")





//: [Next](@next)


