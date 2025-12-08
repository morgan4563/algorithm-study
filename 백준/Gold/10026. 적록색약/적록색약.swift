// max (100 x 100)
    // R G B ,RG B
    // 서치 2번.

    // 입력 받아낼 board 생성
    var board: [[String]] = []
    // 노멀Site 수 var
    var nomalSiteCount = 0
    // 색약Site 수 var
    var notNomalSiteCount = 0

    // 몇 줄 받아낼건지 설정 N으로 받기
    let N = Int(readLine()!)!
    // N회 반복하면서 board에 append
    for _ in 0..<N {
        let line = Array(readLine()!).map { String($0) }
        board.append(line)
    }

    // dy, dx 설정 상하좌우만 고려
    let dy = [-1, 1, 0 ,0]
    let dx = [0, 0, 1, -1]
    // vis
    var vis: [[Bool]] = .init(repeating: .init(repeating: false, count: N), count: N)

    var mainColor = ""
    var queue = [(Int,Int)]()
    var front = 0
    // i,j로 전체 탐색
    for i in 0..<N {
        for j in 0..<N {
            if vis[i][j] { continue } // 방문했으면 패스

            queue.append((i,j))
            vis[i][j] = true
            nomalSiteCount += 1

            while queue.count >= front + 1 {
                let cur = queue[front]
                front += 1
                if mainColor == "" {
                    mainColor = board[cur.0][cur.1]
                }

                for k in 0..<4 {
                    let ny = cur.0 + dy[k]
                    let nx = cur.1 + dx[k]

                    if ny < 0 || ny >= N || nx < 0 || nx >= N { continue } // 범위 체크
                    if vis[ny][nx] == true { continue } // 방문했으면 패스
                    if mainColor != board[ny][nx] { continue } // 색상 체크

                    queue.append((ny,nx))
                    vis[ny][nx] = true
                }
            }
            mainColor = ""
            queue = [(Int,Int)]()
            front = 0
        }
    }

    vis = .init(repeating: .init(repeating: false, count: N), count: N)
    mainColor = ""
    queue = [(Int,Int)]()
    front = 0

    for i in 0..<N {
        for j in 0..<N {
            if vis[i][j] { continue } // 방문했으면 패스

            queue.append((i,j))
            vis[i][j] = true
            notNomalSiteCount += 1

            while queue.count >= front + 1 {
                let cur = queue[front]
                front += 1
                if mainColor == "" {
                    mainColor = board[cur.0][cur.1]
                }

                for k in 0..<4 {
                    let ny = cur.0 + dy[k]
                    let nx = cur.1 + dx[k]

                    if ny < 0 || ny >= N || nx < 0 || nx >= N { continue } // 범위 체크
                    if vis[ny][nx] == true { continue } // 방문했으면 패스
                    if mainColor == "R" || mainColor == "G" {
                        if board[ny][nx] == "B" { continue }
                    } else {
                        if mainColor != board[ny][nx] { continue }
                    }

                    queue.append((ny,nx))
                    vis[ny][nx] = true
                }
            }
            mainColor = ""
            queue = [(Int,Int)]()
            front = 0
        }
    }

    // 결과 출력
    print("\(nomalSiteCount) \(notNomalSiteCount)")