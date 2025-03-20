import Foundation

var board = Array(repeating: Array(repeating: 0, count: 100), count: 100)

func painting(x:Int,y:Int) {
    for nx in x..<x+10 {
        for ny in y..<y+10 {
            board[nx][ny] = 1
        }
    }
}

var result = 0

func check() {
    for i in 0..<100 {
        for j in 0..<100 {
            if board[i][j] == 1 {
                result += 1
            }
        }
    }
}

let N = Int(readLine()!)!
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Substring in
        Int(Substring)!
    }
    
    painting(x: input[0], y: input[1])
}

check()

print(result)

