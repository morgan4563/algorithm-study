import Foundation

let N = Int(readLine()!)!

//[7, 3,8, 8,1,0, 2,7,4,4]

//dp는 값이 최대가 되는 순간.
//각 위치마다 값의 왼,우 인덱스를 파악, 더한값을 해당 디피에 넣기
var triangle = [[Int]]()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    triangle.append(input)
}

var dp = [[Int]]()

for i in 0..<N {
    dp.append(Array(repeating: 0, count: triangle[i].count))
}

dp[0][0] = triangle[0][0]

for i in 1..<N {
    for j in 0..<triangle[i].count {
        var temp = 0
        //맨앞인경우 상위의 첫번재만 조합, 그 다음부터는 상위의 -1과 본인, 마지막은 상위의 마지막만 조합 
        if j == 0 {
            // 배열 첫요소
            temp = dp[i-1].first! + triangle[i].first!
        } else if j == triangle[i].count - 1 {
            // 배열 마지막 요소
            temp = dp[i-1].last! + triangle[i].last!
        } else {
            // 그외
            temp = max(dp[i-1][j-1] + triangle[i][j], dp[i-1][j] + triangle[i][j])
        }
        // 조합 다끝나면 지금의 dp와 비교 더 큰경우 교체
        if dp[i][j] < temp {
            dp[i][j] = temp
        }
    }
}

print(dp[N-1].max()!)