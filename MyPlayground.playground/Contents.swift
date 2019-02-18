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
    var p = 2
    var c = 2
    var t = 0
    var v = 0
    while v < count1 {
        let g = c * p
        if g < count1 {
            while c * p <= count1 {
                for i in natArray {
                    if natArray[i] % 
                }
                natArray.remove(at: <#T##Int#>)
                c+=1
            }
            c = 2
            while t < count1 {
                if natArray[t] > p {
                    p = natArray[t]
                    break
                } else {
                    t+=1
                }
            }
            t = 0
            v+=1
        } else {
            break
        }
    }
    return natArray
}

print(natural(20))
