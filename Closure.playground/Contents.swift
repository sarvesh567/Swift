import UIKit
let birthday: ((String) -> ())? = { (name: String) -> () in
    print("Happy Birthday, \(name)!")
}
 birthday?("Sarvesh Patel")

/*
 1. (String) -> ()
 2. { name in }
 3. birthday()
 */
func wish( completionHandler:  ((String) -> ())?) -> (){
    completionHandler?("Sarvesh")
    print(#function)
}
 wish { name in
    if name == "Sarvesh"{
        print("Happy birthday \(name)")
    }
}
