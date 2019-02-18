import UIKit

//Задание №1
// Функция определяет четное число или нет

func number (_ number1: Int) -> () {
    var n: Int = number1
    n = n % 2
    if (n == 0) {
        print("Число чётное")
    } else {
        print("Число нечётное")
    }
}

//Задание №2
//функция узнаёт, делится ли число на 3 без остатка.

func threeNumber (_ number3: Int) -> () {
    var n: Int = number3
    n = n % 3
    if (n == 0) {
        print("Число делиться на 3 без остатка")
    } else {
        print("Число не делится на 3 без остатка")
    }
}

//Задание №3
//Массив из 100 возрастающих чисел

var numbersArray: [Int] = []

for i in 1...100 {
    numbersArray.append(i)
}

//Задание №4
//Удалить из масива все чётные числа и все числа, которые не делятся на 3

var newArray = numbersArray.filter({$0 % 2 != 0})

newArray = newArray.filter({$0 % 3 == 0})

//Задание №5
//Функция добавляет новое число Фибоначчи в массив

func fibonachi(_ count: Int) -> [Double] {
    var newArray: [Double] = []
    if count == 1 {
        let f0: Double = 0
        newArray.append(f0)
    } else if count == 2 {
        let f1: Double = 1
        let f0: Double = 0
        newArray.append(f0)
        newArray.append(f1)
    } else {
        let f1: Double = 1
        let f0: Double = 0
        newArray.append(f0)
        newArray.append(f1)
        var n = 2
        while n < count + 2 {
            let n1 = (newArray[n - 1]) + (newArray[n - 2])
            newArray.append(n1)
            n+=1
        }
    }
    return newArray
}

//Задача №6
//Записать 100 простых чисел в массив
//Поиск простых чисел до n
func natural(_ count: Int) -> [Int] {
    let count1 = count
    var natArray: [Int] = []
    var n = 0
    while n < count1 {
        natArray.append(n)
        n+=1
    }
    var s = 2
    while s < count1 {
        if natArray[s] != 0 {
            var j = s * 2
            while j < count1 {
                natArray[j] = 0
                j+=s
            }
        }
        s+=1
    }
    natArray = natArray.filter({$0 != 0})
    natArray.remove(at: 0)
    
    return natArray
}

//Отбираем нужное количество нам простых чисел
func count(array: [Int], countN: Int) -> [Int] {
    var newArray1: [Int] = []
    let number3 = array.count
    var i = 0
    while i < number3 {
        if i < countN {
            newArray1.append(array[i])
        }
        i+=1
    }
    return newArray1
}

