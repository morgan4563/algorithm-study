import Foundation

var result = Array(repeating: 0, count: 10)

let A = Int(readLine()!)!
let B = Int(readLine()!)!
let C = Int(readLine()!)!

let multipleString = String(A*B*C)

multipleString.forEach {
    if let index = Int(String($0)) {
        result[index] += 1
    }
}

result.forEach {
    print($0)
}
