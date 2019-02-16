import UIKit

func natural(_ array: [Int], _ count: Int) -> [Int] {
    let count1 = count
    var natArray = array
    if count1 != 1 {
        var n = 2
        while n <= count1 + 1 {
            natArray.append(n)
            n+=1
        }
    }
    var c = 2
    while c < count1 {
        natArray.remove(at: c)
        c+=2
    }
    return natArray
}

var naturalArray: [Int] = []
print(natural(naturalArray, 10))
