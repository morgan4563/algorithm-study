import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})
let n = input[0]//y
let m = input[1]//x

var array = [[Int]]()
var board = Array(repeating: Array(repeating:0,count: m),count: n)
var visited = Array(repeating: Array(repeating: false,count: m),count: n)

for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map({Int($0)!}))
}

var startIndex = (0,0)

for i in 0..<n {
    for j in 0..<m {
        if array[i][j] == 2{
            startIndex = (i,j)
            break
        }
    }
}

let dxdy = [(0,1),(1,0),(0,-1),(-1,0)]

visited[startIndex.0][startIndex.1] = true
board[startIndex.0][startIndex.1] = 0

var queue = [startIndex]

while !queue.isEmpty {
    bfs()
}

func bfs() {
    let (yIndex,xIndex) = queue.removeFirst()
    
    for i in dxdy {
        let nx = xIndex + i.0
        let ny = yIndex + i.1
        
        if (nx >= 0 && nx < m ) && (ny >= 0 && ny < n ) {
            if !visited[ny][nx] && array[ny][nx] == 1 {
                visited[ny][nx] = true
                board[ny][nx] = board[yIndex][xIndex] + 1
                queue.append((ny,nx))
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<m {
        if array[i][j] == 1 && !visited[i][j] {
            board[i][j] = -1
        }
    }
}


board.forEach({
    print($0.map{String($0)}.joined(separator: " "))
})
