import Foundation

struct Heap<T> {
    var array = [T]()
    var priorityFunc: (T,T) -> Bool
    
    init(priorityFunc: @escaping (T,T) -> Bool) {
        self.priorityFunc = priorityFunc
    }
    
    mutating func insert(data: T) {
        array.append(data)
        if array.count == 1 {
            return
        }
        siftUp()
    }
    
    mutating func remove() -> T? {
        if array.count == 0 {
            return nil
        }
        let value = array.first
        array[0] = array[array.count - 1]
        array.removeLast()
        siftDown()
        return value
    }
    
    mutating func siftDown() {
        var parentIndex = 0
        while true {
            var candidateIndex = parentIndex
            var leftChildIndex = leftChildInd(from: parentIndex)
            var rightChildIndex = leftChildIndex + 1

            if leftChildIndex < array.count && priorityFunc(array[leftChildIndex], array[candidateIndex]) {
                candidateIndex = leftChildIndex
            }
            
            if rightChildIndex < array.count && priorityFunc(array[rightChildIndex], array[candidateIndex]) {
                candidateIndex = rightChildIndex
            }
            
            if candidateIndex == parentIndex {
                return
            }
            array.swapAt(candidateIndex, parentIndex)
            parentIndex = candidateIndex
        }
    }
    
    mutating func siftUp() {
        var childIndex = array.count - 1
        
        while true {
            let parentIndex = parentInd(from: childIndex)
            
            if parentIndex == childIndex {
                return
            }
            
            if priorityFunc(array[childIndex], array[parentIndex]) {
                array.swapAt(childIndex, parentIndex)
                childIndex = parentIndex
            }else {
                return
            }
        }
    }
    
    func leftChildInd(from: Int) -> Int {
        return (from * 2) + 1
    }
    
    func parentInd(from: Int) -> Int {
        return (from - 1) / 2
    }
    

}

var heap = Heap<Int>(priorityFunc: <)

let N = Int(readLine()!)!

for _ in 0..<N {
    let input = Int(readLine()!)!
    if input == 0 {
        let data = heap.remove()
        if data != nil {
            print(data!)
        }else {
            print(0)
        }
    }else {
        heap.insert(data: input)
    }
}
