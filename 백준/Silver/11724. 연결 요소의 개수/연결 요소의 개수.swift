import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N,M) = (input[0], input[1])

var graph = Array(repeating: [Int](), count: N + 1)
for _ in 0..<M {
    let input2 = readLine()!.split(separator: " ").map{Int($0)!}
    let (u,v) = (input2[0], input2[1])

    graph[u].append(v)
    graph[v].append(u)
}

var visited = Array(repeating: false, count: N + 1)
var count = 0

for i in 1...N {
    if !visited[i] {
        dfs(i)
        count += 1
    }
}

func dfs(_ node: Int) {
    visited[node] = true

    for next in graph[node] {
        if !visited[next] {
            dfs(next)
        }
    }
}

print(count)