import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
let (N,M) = (input[0], input[1])

var result = [String]()
var visited = Array(repeating: false, count: N+1)
func backTrack(depth: Int) {
    if depth == M {
        print(result.joined(separator: " "))
        return
    }
    for i in 1...N {
        if visited[i] {
            continue
        }
        visited[i] = true
        result.append(String(i))
        backTrack(depth: depth + 1)
        visited[i] = false
        result.removeLast()
    }
}

backTrack(depth: 0)