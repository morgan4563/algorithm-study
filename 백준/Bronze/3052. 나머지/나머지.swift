import Foundation

var set = Set<Int>()

for _ in 0..<10 {
    let input = Int(readLine()!)!
    set.insert(input % 42)
}

print(set.count)
