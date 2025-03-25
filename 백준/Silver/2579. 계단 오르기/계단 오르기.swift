import Foundation

let N = Int(readLine()!)!

var stair = [0]

for _ in 0..<N {
    stair.append(Int(readLine()!)!)
}

var dp = Array(repeating: 0, count: N+1)

dp[0] = stair[0]

for i in 1...N {
    if i == 1 {
        dp[1] = stair[1]
    } else if i == 2 {
        dp[2] = stair[2]+stair[1]
    } else {
        dp[i] = max(stair[i] + stair[i-1] + dp[i-3],stair[i] + dp[i-2])
    }
}

print(dp[N])
