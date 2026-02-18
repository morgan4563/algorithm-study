import Foundation

let V = Int(readLine()!)!
let E = Int(readLine()!)!
var graph = Array(repeating: [Int](), count: V + 1)

for _ in 0..<E {
    let line = readLine()!.split(separator: " ").map{Int($0)!}
    graph[line[0]].append(line[1])
    graph[line[1]].append(line[0]) 
}

var visited = Array(repeating: false, count: V + 1)
var stack = [Int]()

visited[1] = true
stack.append(1)

while !stack.isEmpty {
    let line = stack.removeLast()
    for i in graph[line] {
        if !visited[i] {
            stack.append(i)
            visited[i] = true
        }
    }
}

visited[1] = false
var count = 0
for vis in visited {
    if vis {
        count += 1
    }
}

print(count)