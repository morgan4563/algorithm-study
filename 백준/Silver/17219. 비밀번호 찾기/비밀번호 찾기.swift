import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var dictionary = [String:String]()

for _ in 0..<input[0] {
    let input2 = readLine()!.split(separator: " ").map{String($0)}
    dictionary[input2[0]] = input2[1]
}

var result = [String]()
for _ in 0..<input[1] {
    let input3 = readLine()!
    result.append(dictionary[input3]!)
}

result.forEach { String in
    print(String)
}
