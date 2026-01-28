import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
var graph = Array(repeating: Array(repeating: 10000001, count: n + 1), count: n + 1)

for i in 1...n {
    graph[i][i] = 0
}
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (a,b,c) = (input[0], input[1], input[2])
    graph[a][b] = min(graph[a][b], c)
}

for k in 1...n {
    for i in 1...n {
        for j in 1...n {
            graph[i][j] = min(graph[i][j], graph[i][k] + graph[k][j])
        }
    }
}

for i in 1...n {
    for j in 1...n {
        if graph[i][j] == 10000001 {
            graph[i][j] = 0
        }
    }
}

for i in 1...n {
    var result = [String]()
    for j in 1...n {
        result.append(String(graph[i][j]))
    }
    print(result.joined(separator: " "))
}