import Foundation

let N = Int(readLine()!)!

var array = readLine()!.split(separator: " ").map({Int($0)!})

// 값들을 Set으로 저장해서 , 정렬시키고, 해당 인덱스 저장, 그다음 순서에 맞춰서 해당 인덱스값 가지고 와서 적기?

var set = Set(array).sorted()

var dict: [Int:Int] = [:]

for (i,v) in set.enumerated() {
    dict[v] = i
}

var result = [Int]()

for v in array {
    result.append(dict[v]!)
}

print(result.map({String($0)}).joined(separator: " "))

