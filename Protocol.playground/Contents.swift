/*
protocol Flyable{
    var speedLimit: Int {get set}
    func fly()
}

extension Flyable{
    func fly() {
    print("Fly with speed limit: \(speedLimit)mph")
        }
}

class Airplane: Flyable {
    var speedLimit = 500
}

class Helicopter: Flyable {
    var speedLimit = 150
}
*/

// MARK: - Shopping App
protocol Purchasable{
    var name: String {get}
    var price: Float {get set}
    func purchase()
    
}
extension Purchasable{
    func restock(){
        print("Restock for item \(name) successfull")
    
    }
}
class Book: Purchasable{
    var name: String
    var price: Float
    let numberOfPages: Int
    init(name: String, price: Float,numberOfPages: Int) {
        self.numberOfPages = numberOfPages
        self.name = name
        self.price = price
    }
    func purchase() {
        print("You purchased a book called \(self.name)")
    }
    
}
class VideoGame: Purchasable{
    var name: String
    var price: Float
    private let isOnlineMode: Bool
    
    init(name: String, price: Float,isOnlineMode: Bool) {
        self.isOnlineMode = isOnlineMode
        self.name = name
        self.price = price
    }
    func purchase() {
        print("You purchased a video game called \(self.name)")
    }
}
let book1 = Book(name: "Swift", price: 77.8, numberOfPages: 699)
let book2 = Book(name: "Python", price: 67.8, numberOfPages: 678)

let videoGame1 = VideoGame(name: "GTA", price: 89.9, isOnlineMode: true)
let videoGame2 = VideoGame(name: "PUBG", price: 99.9, isOnlineMode: true)

let books: [Book] = [book1, book2]
let videoGames: [VideoGame] = [videoGame1, videoGame2]

let items: [Purchasable] = [book1, book2, videoGame1, videoGame2]
let book = items[0] as? Book
book?.numberOfPages
book1.restock()
