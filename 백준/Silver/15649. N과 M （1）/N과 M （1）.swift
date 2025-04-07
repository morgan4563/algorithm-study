import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})
let N = input[0]
let M = input[1]

// 백트랙 뎁스 0부터 타고 들어가다가 뎁스랑 일치하면 하나 나오는거

var visited = Array(repeating: false, count: N + 1)
var stack = [Int]()

func backTrack(depth: Int) {
    if depth == M {
        stack.forEach({print($0,terminator: " ")})
        print()
        return
    }
    
    for i in 1...N {
        //N은 3
        if !visited[i] {
            visited[i] = true
            stack.append(i)
            backTrack(depth: depth + 1)

            stack.removeLast()
            visited[i] = false
        }
    }
}

backTrack(depth: 0)
