let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n,m) = (input[0], input[1])

var board: [[Int]] = []
var vis: [[Bool]] = .init(repeating: .init(repeating: false, count: m), count: n)

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map {Int($0)!}
    board.append(line)
}

var queue = [(Int,Int)]()
var front = 0
var maxCount = 0
var paintingCount = 0
var currentSize = 0

let dy = [-1, 1, 0 ,0]
let dx = [0, 0, 1, -1]

for i in 0..<n {
    for j in 0..<m {
        if vis[i][j] == true { continue }
        if board[i][j] == 0 { continue }
        queue.append((i,j))
        vis[i][j] = true
        currentSize += 1

        while queue.count >= front + 1 {
            let cur = queue[front]
            front += 1

            for k in 0..<4 {
                let ny = cur.0 + dy[k]
                let nx = cur.1 + dx[k]

                if ny < 0 || ny >= n || nx < 0 || nx >= m { continue }
                if vis[ny][nx] == true { continue }
                if board[ny][nx] == 0 { continue }

                queue.append((ny,nx))
                currentSize += 1
                vis[ny][nx] = true
            }
        }
        maxCount = max(currentSize, maxCount)
        currentSize = 0
        queue = [(Int,Int)]()
        front = 0
        paintingCount += 1
    }
}
print(paintingCount)
print(maxCount)
