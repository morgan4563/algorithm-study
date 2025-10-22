import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    
    var result = [[Int]]()
    var temp = [Int]()
    
    for e in num_list {
        temp.append(e)
        if temp.count == n {
            result.append(temp)
            temp = []
        }
    }
    return result
}