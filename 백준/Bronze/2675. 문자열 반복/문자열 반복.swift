import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ")
    let R = Int(input[0])!
    let S = input[1]
    
    var result = ""
    for i in S {
        result.append(String(repeating: i, count: R))
    }
    print(result)
}