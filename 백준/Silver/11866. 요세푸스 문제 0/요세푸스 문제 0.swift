import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input[0]
let K = input[1]

var array = Array(1...N)
var result = [Int]()
var ele = 0

while array.count > 0 {
    for i in 0..<K {
        ele = array.removeFirst()
        if i != K-1 {
            array.append(ele)
        }
    }
    result.append(ele)
}

print("<\(result.map{String($0)}.joined(separator: ", "))>")