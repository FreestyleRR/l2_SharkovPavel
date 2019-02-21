import UIKit

enum Engine {
    case on, off
}

enum actionEngine {
    case start
    case turnOff
}

enum Windows {
    case open, close
}

enum zagruzKuz {
    case getIn, getOut
}

enum Kuzov {
    case pustKuz(empty: String)
    case fullKuz(full: String)
    case chastKuz(kg: Double)
}

struct lightCar {
    var brand: String
    var yearOfRelease: Int
    var obemKuz: Kuzov
    var engine: Engine
    var windows: Windows
    var obemFullKuz: Double
    
    mutating func actionEng(action: actionEngine){
        switch action {
        case .start:
            self.engine = .on
        case .turnOff:
            self.engine = .off
        }
    }
}

struct heavyCar {
    var brand: String
    var yearOfRelease: Int
    var obemKuz: Kuzov
    var engine: Engine
    var windows: Windows
    var obemFullKuz: Double
    
    mutating func actionEng(action: actionEngine){
        switch action {
        case .start:
            self.engine = .on
        case .turnOff:
            self.engine = .off
        }
    }
}

var carLight1 = lightCar(brand: "Honda", yearOfRelease: 2005, obemKuz: .pustKuz(empty: "Кузов пустой"), engine: .on, windows: .open, obemFullKuz: 36.5)
var carLight2 = lightCar(brand: "Shkoda", yearOfRelease: 2012, obemKuz: .chastKuz(kg: 150.0), engine: .off, windows: .open, obemFullKuz: 45.2)

var carHeavy1 = heavyCar(brand: "Kamaz", yearOfRelease: 1992, obemKuz: .fullKuz(full: "Кузов полный"), engine: .on, windows: .close, obemFullKuz: 700.0)
var carHeavy2 = heavyCar(brand: "Laz", yearOfRelease: 1999, obemKuz: .chastKuz(kg: 434.2), engine: .on, windows: .close, obemFullKuz: 550.0)

print("Легкоывя машина " + carLight1.brand + ", " + carLight1.yearOfRelease + " года выпуска. С объёмом кузова " + carLight1.obemFullKuz)
