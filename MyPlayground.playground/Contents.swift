import UIKit

//Задача №6
//Звписать 100 простых чисел в массив

func natural(_ count: Int) -> [Int] {
    let count1 = count
    var natArray: [Int] = []
    if count1 != 1 {
        var n = 2
        while n <= count1 + 1 {
            natArray.append(n)
            n+=1
        }
    }
    var p = natArray[0]
    var c = 2
    
    while c < count1 {
        let d = c * p
        natArray.remove(at: d)
        c+=p
    }
    for i in natArray {
        if natArray[i] > p {
            p = natArray[i]
        }
    }
    return natArray
}

let arr: [Int] = natural(1)
print(arr)
