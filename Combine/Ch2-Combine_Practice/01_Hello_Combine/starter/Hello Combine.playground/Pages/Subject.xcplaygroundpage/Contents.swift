import Foundation
import Combine

// MARK: PassthroughSubject -> 바로 패싱해서 보냄
let relay = PassthroughSubject<String, Never>()
let subscription1 = relay.sink { value in
    print("subscription1 received value: \(value)")
}
relay.send("Hello")
relay.send("World!")



// MARK: CurrentValueSubject -> Subscription이 새로 생겼을 때 기존에 가지고 있던 밸류를 한 번 보냄
let variable = CurrentValueSubject<String, Never>("")
print("first value: \(variable.value)")
variable.send("Initial Value")
print("seconde value: \(variable.value)")
let subscription2 = variable.sink { value in
    print("subscription2 received value: \(value)")
}
variable.send("More Text")
print("third value: \(variable.value)")

let publisher = ["Here", "we", "go"].publisher
publisher.subscribe(relay)
publisher.subscribe(variable)


