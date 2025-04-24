import Foundation

let _ = readLine()!.split(separator: " ").map({Int($0)!})

var input = readLine()!.split(separator: " ").map({Int($0)!})
var input2 = readLine()!.split(separator: " ").map({Int($0)!})

input2.forEach {
    input.append($0)
}

print(input.sorted().map({String($0)}).joined(separator: " "))
