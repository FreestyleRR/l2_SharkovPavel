struct Queue<Element> {
    
    var persons = [Element]()
    
    mutating func push(_ person: Element) {
        persons.append(person)
    }
    
    mutating func pop() -> Element {
        return persons.removeFirst()
    }
    
    mutating func count(person: [Element]) -> Int? {
        var counts: Int = 0
        for i in person {
            if person[i] != nil {
                counts += 1
            }
        }
        return counts
    }
}
