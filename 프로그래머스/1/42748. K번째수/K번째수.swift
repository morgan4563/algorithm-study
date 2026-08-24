import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for c in commands {
        let (i,j,k) = (c[0],c[1],c[2])
        var tempArr = [Int]()
        for a in i-1..<j {
            tempArr.append(array[a])            
        }
        let sortArr = tempArr.sorted(by: <)
        result.append(sortArr[k-1])
    }
    
    return result
}