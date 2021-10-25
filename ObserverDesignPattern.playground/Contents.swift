/*
 AIM :- One - Many Relationship
 Requirement
 1. Publisher
 2. Subscribers
 */
protocol Observable{
    func update()
}
class Publisher{
    
    static let shared: Publisher = Publisher()
    var observers: [Observable] = []
    func addObserver(observer: Observable)  {
        observers.append(observer)
    }
    
    func removeObserver(observer: Observable) {
        //Remove observer
    }
    
    func notifyObserber() {
        for observer in observers {
            observer.update()
        }
    }
}

class Observer: Observable{
    init() {
        Publisher.shared.addObserver(observer: self)
    }
    func update() {
        print("There is change in publisher plase update yourself.")
    }
}

let myObseerver =   Observer()
myObseerver.update()
