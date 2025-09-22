import Foundation

let input = readLine()!.split(separator: " ").map { Int($0) }
let (N,M) = (input[0]!,input[1]!)

var arr = Array<Int>(1...N)

for _ in 0..<M {
    let input2 = readLine()!.split(separator: " ").map { Int($0) }
    let (first,second) = (input2[0]! - 1,input2[1]! - 1)
    let temp = arr[second]
    arr[second] = arr[first]
    arr[first] = temp
}

let result = arr.map { String($0) }.joined(separator: " ")

print(result)