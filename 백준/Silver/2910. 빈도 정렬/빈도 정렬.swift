import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
let (N,_) = (input[0],input[1])
let arr = readLine()!.split(separator: " ").map {Int($0)!}

var dictionary = [Int: (Int,Int)]()
var number = 0

for i in 0..<N {
    if let current = dictionary[arr[i]] {
        dictionary[arr[i]] = (current.0 + 1,current.1)
    } else {
        dictionary[arr[i]] = (1, number)
        number += 1
    }
}

let sorted = dictionary.sorted {
    if $0.value.0 == $1.value.0 {
        return $0.value.1 < $1.value.1
    } else {
        return $0.value.0 > $1.value.0
    }
}
var result = [String]()
for (key, value) in sorted {
    for _ in 0..<value.0 {
        result.append(String(key))
    }
}
let printResult = result.joined(separator: " ")
print(printResult)