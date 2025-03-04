import Foundation

let n = Int(readLine()!)!
var stack = [Int]()

var checkStack = [Int]()
for _ in 0..<n {
    checkStack.append(Int(readLine()!)!)
}

var resultStack = [String]()

for i in 0..<n {
    let data = i+1
    stack.append(data)
    resultStack.append("+")
    while stack.last == checkStack.first {
        resultStack.append("-")
        stack.removeLast()
        checkStack.removeFirst()
        if stack.isEmpty || checkStack.isEmpty {
            break
        }
    }
}

if checkStack.isEmpty {
    resultStack.forEach { print($0) }
} else {
    print("NO")
}
