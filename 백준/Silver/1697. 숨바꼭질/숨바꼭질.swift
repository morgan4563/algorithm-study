import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let (N,K) = (input[0],input[1])
// K는 타겟, N은 수빈이 위치

// 수빈이 위치 X를 나타낼 board 필요 거기서부터 bfs 하면서 이동한 위치에 걸린 시간 표시
var board = Array(repeating:0, count: 100001)
var visited = Array(repeating: false, count: 100001)

visited[N] = true
var queue = [N]
//시작위치

func bfs() {
    while true {
        let current = queue.removeFirst()

        if current == K {
            print(board[current])
            // 도착한 위치가 target이면 출력하고 마무리
            return
        }
        // 지금 있는 위치 뽑기
        for i in [current-1,current+1,current*2] {
            if i <= 100000 && i >= 0 && !visited[i] {
                visited[i] = true
                queue.append(i)
                board[i] = board[current] + 1
            }
            //i는 100000보다 작거나 같아야하고 방문한적 없어야하며 0보다 같거나 커야함
        }
    }
}

bfs()
