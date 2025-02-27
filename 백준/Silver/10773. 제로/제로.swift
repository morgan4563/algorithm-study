import Foundation

let K = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<K {
    let data = Int(readLine()!)!
    if data == 0 {
        stack.removeLast()
    } else {
        stack.append(data)
    }
}

print(stack.reduce(0, +))