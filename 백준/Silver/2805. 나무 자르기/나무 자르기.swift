import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})
let N = input[0]
let M = input[1]

let trees = readLine()!.split(separator: " ").map({Int($0)!})

var start = 0
var end = trees.max()!
var result = 0

while start <= end {
    let mid = (start + end)/2
    
    let cuttedTrees = trees.filter({$0 > mid}).map({$0 - mid}).reduce(0, +)
    
    if cuttedTrees >= M {
        result = mid
        start = mid + 1
    }else {
        end = mid - 1
    }
}

print(result)
