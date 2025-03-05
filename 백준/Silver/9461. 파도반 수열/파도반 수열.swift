import Foundation

let input = Int(readLine()!)!
var dp = Array(repeating: 0, count: 101)

dp[1] = 1
dp[2] = 1
dp[3] = 1
dp[4] = dp[3]+dp[1]
dp[5] = dp[4]
dp[6] = dp[5]+dp[3]
dp[7] = dp[6]+dp[2]
dp[8] = dp[7]+dp[1]

for i in 9...100 {
    dp[i] = dp[i-1] + dp[i-5]
}

var result = [Int]()

for _ in 0..<input {
    let N = Int(readLine()!)!
    result.append(dp[N])
}

result.forEach { Int in
    print(Int)
}

