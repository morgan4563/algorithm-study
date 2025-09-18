import Foundation

var board = [[String]]()
var result = 0

for _ in 0..<8 {
    let row = Array(readLine()!).map {String($0)}
    board.append(row)
}

for i in 0..<8 {
    for j in 0..<8 {
        if i % 2 == 0 {
            if j % 2 == 0 {
                if board[i][j] == "F" {
					result += 1
                }
            }
        } else {
            if j % 2 == 1 {
                if board[i][j] == "F" {
                    result += 1
                }
            }
        }
    }
}

print(result)