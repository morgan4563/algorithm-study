import Foundation

let N = Int(readLine()!)!
let NArray = readLine()!.split(separator: " ").map{Int($0)!}

let M = Int(readLine()!)!
let MArray = readLine()!.split(separator: " ").map{Int($0)!}

var set1 = Set<Int>()

NArray.forEach{
    set1.insert($0)
}

var result = ""

for i in 0..<M {
    if set1.contains(MArray[i]) {
        result.append("1")
    }else {
        result.append("0")
    }
    if i != M - 1 {
        result.append(" ")
    }
}

print(result)
