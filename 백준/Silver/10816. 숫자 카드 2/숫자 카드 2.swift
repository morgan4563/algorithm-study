import Foundation

let N = Int(readLine()!)!
var NArray = readLine()!.split(separator: " ").map{Int(String($0))!}

let M = Int(readLine()!)!
var MArray = readLine()!.split(separator: " ").map{Int(String($0))!}

var dict = [Int:Int]()

for i in MArray {
    dict[i] = 0
}

for j in NArray {
    if let value = dict[j] {
        dict[j] = value + 1
    }
}

var result = ""

for k in 0..<MArray.count {
    if let value = dict[MArray[k]] {
        result += "\(String(value)) "
    }
}

result.removeLast()
print(result)
