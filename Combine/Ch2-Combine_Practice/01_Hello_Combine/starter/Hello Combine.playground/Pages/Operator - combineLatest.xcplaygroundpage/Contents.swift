//: [Previous](@previous)

import Foundation
import Combine


// Basic CombineLatest
let strPublisher = PassthroughSubject<String, Never>()
let numPublisher = PassthroughSubject<Int, Never>()

strPublisher.combineLatest(numPublisher).sink { str, num in
    print("Received str: \(str), num: \(num)")
}

Publishers.CombineLatest(strPublisher, numPublisher).sink { (str, num) in
    print("Received str: \(str), num: \(num)")
}

strPublisher.send("a")
numPublisher.send(1)
strPublisher.send("b")
numPublisher.send(2)
strPublisher.send("c")
numPublisher.send(3)


// Advanced CombineLatest
let usernamePublisher = PassthroughSubject<String, Never>()
let passwordPublisher = PassthroughSubject<String, Never>()

let validatedCredentialsSubscription = usernamePublisher.combineLatest(passwordPublisher)
    .map { (username, password) -> Bool in
        return !username.isEmpty && !password.isEmpty && password.count > 12
    }
    .sink { valid in
        print("Credential valid?: \(valid)")
    }

usernamePublisher.send("json")
passwordPublisher.send("1234567890123")

// Merge
let publisher1 = [1, 2, 3, 4, 5].publisher
let publisher2 = [100, 200, 300, 400, 500].publisher
// 두 퍼블리셔의 데이터 타입이 같을 때만 머지가 가능하다 -> combineLatest랑 다름
let mergePublisherSubscription = publisher1.merge(with: publisher2)
    .sink { value in
        print("Merge - subscription received value: \(value)")
    }



//: [Next](@next)
