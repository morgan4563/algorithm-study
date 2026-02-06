import Foundation

struct Heap<T> {
    var elements = [T]()
    let sort: (T,T) -> Bool

    var isEmpty: Bool {
        return elements.isEmpty
    }

    mutating func insert(_ element: T) {
        if elements.isEmpty {
            elements.append(element)
            return
        }
        elements.append(element)

        var target = elements.count - 1
        while target > 0 {
            let pI = (target - 1) / 2
            if sort(elements[target], elements[pI]) {
                elements.swapAt(pI, target)
            } else {
                break
            }
            target = pI
        }
    }

    mutating func delete() -> T? {
        if elements.isEmpty {
            return nil
        }
        if elements.count == 1 {
            return elements.removeLast()
        }
        let top = elements[0]
        elements[0] = elements.removeLast()
        var currentI = 0
        while true {
            var target = currentI
            let lc = (target * 2) + 1
            let rc = (target * 2) + 2

            if lc < elements.count && sort(elements[lc], elements[target]) {
                target = lc
            }
            if rc < elements.count && sort(elements[rc], elements[target]) {
                target = rc
            }
            if currentI == target {
                break
            }
            elements.swapAt(currentI, target)
            currentI = target
        }
        return top
    }
}

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var graph = Array(repeating: [(Int, Int)](), count: N + 1)
var dist = Array(repeating: 1000000001, count: N + 1)
var pq = Heap<(Int,Int)> {
    return $0.1 < $1.1
}

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (u,v,w) = (input[0], input[1], input[2])

    graph[u].append((v,w))
}

let input = readLine()!.split(separator: " ").map{Int($0)!}
let (s,e) = (input[0], input[1])

dist[s] = 0
pq.insert((s,0))

while !pq.isEmpty {
    let (v, w) = pq.delete()!

    if w > dist[v] { continue }

    for (nv ,nw) in graph[v] {
        let ncost = w + nw
        if ncost < dist[nv] {
            dist[nv] = ncost
            pq.insert((nv,ncost))
        }
    }
}

print(dist[e])