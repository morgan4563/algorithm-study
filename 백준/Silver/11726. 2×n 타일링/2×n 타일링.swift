import Foundation

let n = Int(readLine()!)!

var dp = [0,1,2]

if n == 1 {
    print(1)
} else if n == 2 {
    print(2)
} else {
    for i in 3...n {
        dp.append((dp[i-2] + dp[i-1]) % 10007)
    }
    print(dp[n])
}
