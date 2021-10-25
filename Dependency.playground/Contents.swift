protocol Propulsion{
    func move()
}
class Vehicle  {
    var engine: Propulsion
    init(engine: Propulsion) {
        self.engine = engine
    }
    func forward() {
        engine.move()
    }
    
}
class RaceCarEngine: Propulsion {
    func move() {
        print("vrooommmmmmm")
    }
}
class RocketEngine: Propulsion {
    func move() {
        print("fly in the sky")
    }
}
let rocket = RocketEngine()
let car = Vehicle(engine: rocket)
car.forward()


protocol API{
    func getItem()
}
class WebAPI: API{
    
    func getItem() {
        print("List of items")
    }
}
class FakeAPI{
    let api: API
    init(api: API) {
        self.api = api
    }
    func list() {
        api.getItem()
    }
}

