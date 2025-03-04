import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (K,N) = (input[0],input[1])

var array = [Int]()

for _ in 0..<K {
    array.append(Int(readLine()!)!)
}

var start = 1
var end = array.max()!
var result = 0

while start <= end {
    let mid = (start + end)/2
    var count = 0
    for data in array {
        count += data/mid
    }
    
    if count >= N {
        result = mid
        start = mid + 1
    } else {
        end = mid - 1
    }
}

print(result)
