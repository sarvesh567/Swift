// MARK: - Error Handling
import UIKit
enum AppError: Error{
    case InsufficientFunds(additionalFundRequered: Float)
    case InsufficientStock
}
protocol AppUser{
    var name: String {get}
    var availableFund: Float {get set}
}
protocol ShopItem{
    var name: String {get}
    var price: Float {get}
    var remainigStock: Int {get}
}
class User: AppUser{
    var name: String
    var availableFund: Float
    init(name: String, availableFund: Float) {
        self.name = name
        self.availableFund = availableFund
    }
}
class Item: ShopItem{
    var remainigStock: Int
    var name: String
    var price: Float
    
    
    init(name: String, price: Float, remainigStock: Int) {
        self.name = name
        self.price = price
        self.remainigStock = remainigStock
    }
}
let sarvesh = User(name: "Sarvesh Patel", availableFund: 900)
let mackbookPro = Item(name: "Mac Book Pro", price: 999, remainigStock: 10)
func purchase(user: User, item: Item) throws{
    
    if user.availableFund < item.price{
        throw AppError.InsufficientFunds(additionalFundRequered: item.price - user.availableFund)
    }
    if item.remainigStock <= 0{
        throw AppError.InsufficientStock
    }
    user.availableFund -=  item.price
    item.remainigStock -= 1
    print("User has successfully purchased \(item.name).")
    print("There is now \(item.remainigStock) stock.")
    print("The user remaining fund \(user.availableFund)")

}

do{
    try purchase(user: sarvesh, item: mackbookPro)
}catch AppError.InsufficientFunds(let addtionalFundRequired){
    print("Hey, Please add $\(addtionalFundRequired) in your account.")
}catch AppError.InsufficientStock{
    print("Sorry, We item is not in stock")
}catch{
    print("Please try again, Something went wrong.")
}
