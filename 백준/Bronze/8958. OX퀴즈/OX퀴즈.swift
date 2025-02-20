import Foundation

var input = Int(readLine()!)!

for _ in 0..<input {
    let input2 = readLine()!
    var count = 0
    var result = 0
    for i in input2 {
        if i == "O" {
            count += 1
            result += count
        } else {
            count = 0
        }
    }
    print(result)
}
