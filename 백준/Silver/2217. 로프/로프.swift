import Foundation

// 일단 모든 로프를 큰수로 부터 정렬
// 해당 인덱스 곱 x2보다 앞이 더 크면 앞이 맥스

let N = Int(readLine()!)!
var array = [Int]()

for _ in 0..<N {
    array.append(Int(readLine()!)!)
}

array.sort(by: >)

var max = array[0]

for i in 0..<N {
    if array[i] * (i + 1) > max {
        max = array[i] * (i + 1)
    }
}

print(max)
