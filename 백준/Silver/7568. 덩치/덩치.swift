import Foundation

let N = Int(readLine()!)!

var rank = Array(repeating: 1, count: N)

var people = Array(repeating: [0,0], count: N)

for i in 0..<N {
    people[i] = readLine()!.split(separator: " ").map{Int($0)!}
}

// 맨앞 애를 전체 탐색하면서 더 작은게 있으면 한칸씩 내려
for i in 0..<N {
    for j in 0..<N {
        if people[i][0] < people[j][0] && people[i][1] < people[j][1] {
            rank[i] += 1
        }
    }
}
var result = ""
rank.forEach{
    result.append("\($0) ")
}

print(result)
