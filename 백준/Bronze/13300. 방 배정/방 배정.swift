import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (N,K) = (input[0],input[1])
var roomArr = Array(repeating: (Array(repeating:0, count: 2)), count: 7)
for _ in 0..<N {
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    roomArr[input2[1]][input2[0]] += 1
}

var result = 0
for e in roomArr {
    for e2 in e {
        let temp = Int(ceil(Double(e2) / Double(K)))
        result += temp
    }
}

print(result)