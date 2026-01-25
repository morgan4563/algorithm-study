import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let (V,E) = (input[0], input[1])

let startV = Int(readLine()!)!

var graph = Array(repeating: [(Int,Int)](), count: V + 1)
for _ in 0..<E {
    let input2 = readLine()!.split(separator: " ").map {Int($0)!}
    let (u,v,w) = (input2[0],input2[1],input2[2])

    graph[u].append((v,w))
}
var pq = Heap<(Int,Int)>(sort: {$0.1 < $1.1})
var dist = Array(repeating: Int.max, count: V + 1)

pq.insert((startV, 0))
dist[startV] = 0

while !pq.isEmpty {
    let top = pq.delete()!
    let (v,w) = (top.0,top.1)

    if w > dist[v] { continue }

    for (next, w) in graph[v] {
        let newDist = dist[v] + w

        if newDist < dist[next] {
            dist[next] = newDist
            pq.insert((next, newDist))
        }
    }
}

for i in 1...V {
    print(dist[i] == Int.max ? "INF" : "\(dist[i])")
}

struct Heap<T> {
    var elements: [T] = []
    let sort: (T,T) -> Bool
    var isEmpty: Bool {
        return elements.isEmpty
    }

    mutating func insert(_ element: T) {
        elements.append(element)

        if elements.count == 1 {
            return
        }
        var i = elements.count - 1
        while i > 0 {
            let p = (i - 1) / 2
            if elements.count > i && sort(elements[i],elements[p]) {
                elements.swapAt(i,p)
                i = p
            } else {
                break
            }
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
        var i = 0
        while true {
            var t = i
            let l = (i * 2) + 1
            let r = (i * 2) + 2
            if elements.count > l && sort(elements[l], elements[t]) {
                t = l
            }
            if elements.count > r && sort(elements[r], elements[t]) {
                t = r
            }
            if t == i {
                break
            }
            elements.swapAt(i,t)
            i = t
        }
        return top
    }
}