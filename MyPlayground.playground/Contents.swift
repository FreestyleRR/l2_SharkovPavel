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
    var windows: Windows
    var obemFullKuz: Double
    
    mutating func actionEng(action: actionEngine){
        if action == .start {
            self.engine = .on
        } else if action == .turnOff {
            self.engine = .off
        }
   }
}
