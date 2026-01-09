let input = readLine()!.split(separator: " ").map { Int($0)! }
let (N,K) = (input[0],input[1])

let conveyorDurability = readLine()!.split(separator: " ").map { Int($0)! }
var conveyor = [(Int,Bool)]()

for drability in conveyorDurability {
    conveyor.append((drability, false))
}

// 회차
var result = 1

while true {
    // 단계 1
    let last = conveyor.removeLast()
    conveyor.insert(last, at: 0)

    if conveyor[N-1].1 {
        conveyor[N-1].1 = false
    }

    // 단계 2
    // N-1(마지막칸)에 로봇 없음, 로봇 false, 내구도 1 이상이면 N-2에서 로봇 당기기
    // N-1부터 인덱스 1까지 진행
    for i in stride(from: N-1, through: 1, by: -1) {
        if conveyor[i].0 >= 1 && !conveyor[i].1 {
            if conveyor[i-1].1 {
                conveyor[i-1].1 = false
                conveyor[i].1 = true
                conveyor[i].0 -= 1
            }
        }
    }
    if conveyor[N-1].1 {
        conveyor[N-1].1 = false
    }

    // 단계 3
    if conveyor[0].0 >= 1 {
        conveyor[0].0 -= 1
        conveyor[0].1 = true
    }

    // 단계 4
    var zeroCount = 0
    for con in conveyor {
        if con.0 == 0 {
            zeroCount += 1
        }
    }
    if zeroCount >= K {
        break
    }

    result += 1
}

print(result)