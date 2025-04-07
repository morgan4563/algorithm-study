import Foundation

let N = Int(readLine()!)!
var count = N
var array = [[String]]()
for i in 0..<N {
    for _ in count..<N {
        print(" ", terminator: "")
    }
    for _ in i..<N {
        print("*", terminator: "")
    }
    count -= 1
    print()
}

