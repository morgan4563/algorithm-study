import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})
let (N,M) = (input[0],input[1])
// M 뎁스

var stack = [Int]()

func backTrack(start: Int) {
    if stack.count == M {
        print(stack.map({String($0)}).joined(separator: " "))
        return
    }

    if start > N {
        return
    }

    for i in start...N { // 1~3
        stack.append(i)
        backTrack(start: i + 1)
        stack.removeLast()
    }
}

backTrack(start: 1)

// 처음 1들어가면 뎁스 평가하고 아니면 뎁스 추가, 뎁스 맞으면 출력 후 하나 방출
// 스타트 기준보다 높은 숫자로 시작이 들어가야함
