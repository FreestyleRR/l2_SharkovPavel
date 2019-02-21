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

struct Hunday {
    var brand: String
    var yearOfRelease: Int
    var obemKuz: Kuzov
    var engine: Engine
    var actEngine: actionEngine
    var windows: Windows
    var obemFullKuz: Double
    
    mutating func actionEng(action: Engine){
        if action == .on {
            self.actEngine = .start
        } else if action == .off {
            self.actEngine = .turnOff
        }
   }
}
