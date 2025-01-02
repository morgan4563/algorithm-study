import Foundation

var dictionary: [String: Int] = [:]

let input = readLine()!.split(separator: " ").map{Int($0)!}

var count = 0
var result = [String]()

let (N,M) = (input[0],input[1])

for i in 0..<N {
    let input2 = readLine()!
    dictionary[input2] = 0
}

for j in 0..<M {
    let input3 = readLine()!
    if dictionary[input3] == 0 {
        count += 1
        result.append(input3)
    }
}

result.sort(by: <)
print(count)
result.forEach { data in
    print(data)
}
