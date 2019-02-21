import UIKit

enum Engine {
    case on, off
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
    
    mutating func windowsOpen(){
        self.windows = .open
    }
    mutating func windowsClose(){
        self.windows = .close
    }
}


