func solution(_ board:[[Int]]) -> Int {

    // 탐색하면서 1을 발견하면 상하좌우에 숫자 2로 표기
    // 전체 탐색하면서 0만 안전지대로 검사하여 반환

    let dy = [1, 0, -1, 0, 1, -1, -1, 1]
    let dx = [0, 1, 0, -1, 1, 1, -1, -1]


    var newBoard = board
    let n = newBoard[0].count

    for i in 0..<n {
        for j in 0..<n {
            if newBoard[i][j] == 1 {
                for k in 0..<8 {
                    let ny = i + dy[k]
                    let nx = j + dx[k]

                    if ny < 0 || ny >= n  || nx < 0 || nx >= n { continue }

                    if newBoard[ny][nx] == 0 {
                        newBoard[ny][nx] = 2
                    }
                }
            }
        }
    }

    var result = 0
    for i in 0..<n {
        for j in 0..<n {
            if newBoard[i][j] == 0 {
                result += 1
            }
        }
    }
    return result
}
