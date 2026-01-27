import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let (M,N) = (input[0], input[1])

var box = [[Int]]()

for _ in 0..<N {
    let input2 = readLine()!.split(separator: " ").map{Int($0)!}
    box.append(input2)
}

var q = [(Int,Int)]()

//첫 검증
var validation = true
for i in 0..<N {
    for j in 0..<M {
        if box[i][j] == 0 {
            validation = false
        }
        if box[i][j] == 1 {
            q.append((i,j))
        }
    }
}

if validation {
    print("0")
} else {
    let dy = [-1,0,1,0]
    let dx = [0,1,0,-1]
    var qp = 0
    while qp < q.count {
        let e = q[qp]
        for i in 0..<4 {
            let ny = e.0 + dy[i]
            let nx = e.1 + dx[i]

            if ny >= 0 && nx >= 0 && ny < N && nx < M {
                if box[ny][nx] == -1 {
                    continue
                }
                if box[ny][nx] == 0 {
                    box[ny][nx] = box[e.0][e.1] + 1
                    q.append((ny,nx))
                }
            }
        }
        qp += 1
    }

    //검증 2
    var max = -1
    for i in 0..<N {
        for j in 0..<M {
            if box[i][j] == 0 {
                validation = true
            }
            if box[i][j] > max {
                max = box[i][j]
            }
        }
    }

    if validation {
        print("-1")
    } else {
        print(max - 1)
    }
}