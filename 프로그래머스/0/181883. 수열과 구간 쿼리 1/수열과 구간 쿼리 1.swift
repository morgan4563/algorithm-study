import Foundation
//3:36 시작
func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    
    for q in queries {
        for i in q[0]...q[1] {
            arr[i] += 1
        }
    }
    
    return arr
}
//3:40 끝