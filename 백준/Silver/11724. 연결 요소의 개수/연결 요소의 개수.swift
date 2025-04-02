import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let M = input[1]

var graph = Array(repeating: [Int](), count: N + 1)
var visited = Array(repeating: false, count: N + 1)

for _ in 0..<M {
    let input2 = readLine()!.split(separator: " ").map({Int($0)!})
    let u = input2[0]
    let v = input2[1]
    
    graph[u].append(v)
    graph[v].append(u)
}
// 간선 정리

// 첫 인덱스의 방문 상태 확인
// 방문 안했으면 dfs 시작 끝나면 카운트 1 추가
// dfs는 해당 graph의 간선 탐색

func dfs(index: Int) {
    for neighbor in graph[index] {
        if !visited[neighbor] {
            visited[neighbor] = true
            dfs(index: neighbor)
        }
    }
}

var count = 0
for i in 1...N {
    if !visited[i] {
        visited[i] = true
        dfs(index: i)
        count += 1
    }
}

print(count)