import Foundation

let N = Int(readLine()!)!

if N <= 3 {
    if N == 1 {
        print(0)
    } else {
        print(1)
    }
} else {
    var dp = Array(repeating: 0, count: N + 1)
    dp[0] = N+1
    dp[1] = 0
    dp[2] = 1
    dp[3] = 1

    for i in 4...N {
        var tempIndexOne = 0
        var tempIndexTwo = 0
        var tempIndexThree = i - 1

        if i % 3 == 0 {
            tempIndexOne = i / 3
        }
        if i % 2 == 0 {
            tempIndexTwo = i / 2
        }

        var bestValue = min(min(dp[tempIndexOne], dp[tempIndexTwo]), dp[tempIndexThree])
        dp[i] = bestValue + 1
    }

    print(dp.last!)
}