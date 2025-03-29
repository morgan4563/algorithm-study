import Foundation

let X = Int(readLine()!)!
var width = [64]

while width.reduce(0,+) > X {
    width.sort(by: >)
    let last = width.removeLast()/2
    if width.reduce(0, +) + last >= X {
        width.append(last)
    }else {
        width.append(last)
        width.append(last)
    }
}

print(width.count)
