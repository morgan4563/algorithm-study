import Foundation

var heap = minHeap<Int>()
let N = Int(readLine()!)!
for _ in 0..<N {
    let input = Int(readLine()!)!
    if input != 0 {
        heap.insert(input)
    } else {
        let output = heap.delete()
        if output == nil {
            print("0")
        } else {
            print(output!)
        }
    }
}

struct minHeap<T: Comparable> {
    var elements = [T]()

    mutating func insert(_ element: T) {
        elements.append(element)
        var index = elements.count - 1
        while true {
            let parentsIndex = (index - 1) / 2
            if elements[parentsIndex] <= elements[index] { break }
            elements.swapAt(parentsIndex,index)
            index = parentsIndex
        }
    }

    mutating func delete() -> T? {
        if elements.count == 0 {
            return nil
        }
        if elements.count == 1 { return elements.removeLast() }

        let pop = elements[0]
        var index = 0
        var target = 0
        elements[0] = elements.removeLast()

        while true {
            let lc = index * 2 + 1
            let rc = index * 2 + 2

            if lc < elements.count && elements[index] > elements[lc] {
                target = lc
            }
            if rc < elements.count &&  elements[target] > elements[rc] {
                target = rc
            }
            if target == index { break }
            elements.swapAt(target, index)
            index = target
        }
        return pop
    }
}