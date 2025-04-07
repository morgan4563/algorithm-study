import Foundation

let input = Int(readLine()!)!

var paper = [[Int]]()

for _ in 0..<input {
    paper.append(readLine()!.split(separator: " ").map({Int($0)!}))
}

var white = 0
var blue = 0

func cut(startX:Int, startY:Int, size: Int) {
    // 첫번째 요소와 전체 요소가 같으면 끝내는거
    // 다르면 4조각 나누기
    var isSame = true
    let first = paper[startY][startX]
    
    for i in startY..<startY + size {
        for j in startX..<startX + size {
            if first != paper[i][j] {
                isSame = false
                break
            }
        }
        if !isSame {
            break
        }
    }
    if !isSame {
        let half = size / 2
        cut(startX: startX, startY: startY, size: half)
        cut(startX: startX + half, startY: startY, size: half)
        cut(startX: startX, startY: startY + half, size: half)
        cut(startX: startX + half, startY: startY + half, size: half)
    } else {
        first == 1 ? (blue = blue + 1) : (white = white + 1)
    }
}

cut(startX: 0, startY: 0, size: input)

print(white)
print(blue)
