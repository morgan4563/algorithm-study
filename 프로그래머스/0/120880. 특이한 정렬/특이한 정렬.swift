import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    let newNumlist = numlist.sorted(by: >)
    //sorted 역방향 왼쪽이 높은값
    let absNumlist = newNumlist.map{abs($0 - n)}
    //원본값에서 n 빼기, 거리나옴, abs로 거리 확정
    
    var temp = [(Int,Int)]()
    for (i,v) in absNumlist.enumerated() {
        temp.append((i,v))
    }
    
    temp.sort {
        $0.1 < $1.1
    }
    
    var result = [Int]()
    for (i,v) in temp {
        result.append(newNumlist[i])
    }

    return result
}