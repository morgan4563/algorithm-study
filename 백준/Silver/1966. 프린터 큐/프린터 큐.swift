import Foundation

let K = Int(readLine()!)!
var result = [Int]()

for _ in 0..<K {
    var queue = [(Int,Int)]()
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (N,M) = (input[0],input[1])
    // N 몇개 M 몇번인덱스가 출력될지
    var input2 = readLine()!.split(separator: " ").map{Int($0)!}
    // 데이터 뭉치
    var index = 0
    
    for data in input2 {
        queue.append((data,index))
        index += 1
        // 각 $0 중요도 $1 인덱스
    }
    
    input2.sort(by: >)
    // 출력 중요도순 정렬
    
    for i in 0..<N {
        //N개의 데이터에 접근
        while queue[i].0 != input2[i] {
            let data = queue.remove(at: i)
            queue.append(data)
        }
    }

    var count = 1
    queue.forEach { data in
        if data.1 == M {
            result.append(count)
        }
        count += 1
    }
}

result.forEach { data in
    print(data)
}
