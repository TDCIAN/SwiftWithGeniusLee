//: [Previous](@previous)

import Foundation
import Combine

// Transform - Map
let numPublisher = PassthroughSubject<Int, Never>()
let subscription1 = numPublisher
    .map { num -> String in
        return "\(num)살입니다"
    }
    .sink { value in
        print("Transformed Value: \(value)")
    }

numPublisher.send(10)
numPublisher.send(20)
numPublisher.send(30)
subscription1.cancel()

// Filter
let stringPusblisher = PassthroughSubject<String, Never>()
let subscription2 = stringPusblisher
    .filter { $0.contains("a") }
    .sink { value in
        print("Filtered Value: \(value)")
    }

stringPusblisher.send("Amen")
stringPusblisher.send("amen")
stringPusblisher.send("Bucks")
stringPusblisher.send("Check")
//: [Next](@next)
