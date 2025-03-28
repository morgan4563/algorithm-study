import Foundation

let S = Int(readLine()!)!

var N = 1
var sum = 0
var count = 0

while S > sum {
    sum += N
    N += 1
    count += 1
    if S < sum {
        count -= 1
    }
}

print(count)
