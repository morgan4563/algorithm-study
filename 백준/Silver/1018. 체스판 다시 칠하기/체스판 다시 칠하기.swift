import Foundation

let numbers = readLine()!.split(separator:" ").compactMap{Int($0)!}
let (N,M) = (numbers[0],numbers[1])
 
var chessBoardArray = [[String]]()

for _ in 0..<N {
    let chessLine = readLine()!.map{String($0)}
    chessBoardArray.append(chessLine)
}

var result = [Int]()

for m in 0...M-8 {
for n in 0...N-8 {
    var wStartCount = 0
    var bStartCount = 0
    for y in 0+n...7+n {
        for x in 0+m...7+m {
            if (y+x) % 2 == 0 {
                if chessBoardArray[y][x] == "B" {
                    wStartCount += 1
                }else {
                    bStartCount += 1
                }
                // w로 시작 하는경우 짝수 번호 싹다 W로 바꿔야해
                // 홀수 번호는 모두 B로 바꿔야해
                
                // b로 시작하는경우 짝수번호 싹다 B로 바꿔야해
                // 홀수 번호는 모두 W로 바꿔야해
            }else {
                if chessBoardArray[y][x] == "W" {
                    wStartCount += 1
                }else {
                    bStartCount += 1
                }
            }
        }
    }
    result.append(min(wStartCount,bStartCount))
}
}

print(result.min()!)
