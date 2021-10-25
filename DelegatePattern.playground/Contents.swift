import UIKit
protocol SendMessage{
    func sendMessage(message: String)
}
class User{
 var name: String
    var delegate: SendMessage?
    init(name: String) {
        self.name = name
    }

}
class Friend{
    var name: String = ""
    init(name: String) {
        self.name = name
    }
    init() {
        sarvesh.delegate = self
    }
}
extension Friend: SendMessage{
    func sendMessage(message: String) {
        print("\(message)")
    }
}
let sarvesh = User(name: "Sarvesh")
let f = Friend()
let suraj = Friend(name: "Suraj")
//sarvesh.delegate = suraj
sarvesh.delegate?.sendMessage(message: "HI")
