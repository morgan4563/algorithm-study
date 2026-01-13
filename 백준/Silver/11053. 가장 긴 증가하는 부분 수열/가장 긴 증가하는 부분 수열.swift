import Foundation
let _ = readLine()!
let input = readLine()!.split(separator: " ").map{Int($0)!}
if input.count == 1 {
    print("1")
} else {
    var dp = Array(repeating: 0, count: input.count)

    dp[0] = 1
    for i in 1..<input.count {
        let currentNum = input[i]
        var temp = 0
        for j in 0..<i {
            if input[j] < currentNum && temp < dp[j] {
                temp = dp[j]
            }
        }
        dp[i] = temp + 1
    }

    print(dp.max()!)
}