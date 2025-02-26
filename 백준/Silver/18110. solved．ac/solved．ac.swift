import Foundation

let n = Int(readLine()!)!
var array = [Int]()

if n == 0 {
    print(0)
} else {
    for _ in 0..<n {
        array.append(Int(readLine()!)!)
    }

    array.sort()

    let average = Int((Double(array.count) * 0.15).rounded())

    array.removeFirst(average)
    array.removeLast(average)

    let level = Int((Double(array.reduce(0, +)) / Double(array.count)).rounded())

    print(level)
}