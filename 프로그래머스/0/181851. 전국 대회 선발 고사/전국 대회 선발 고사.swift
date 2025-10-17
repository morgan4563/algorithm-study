import Foundation
// 11:07 시작
func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    // 인덱스가 학생의 번호
    // 배열에서 해당 인덱스의 값이 그 학생의 순위
    // 재정의?, 참가 가능 학생에 대해서 튜플로 학생번호와 순위
    var newTupleArray = [(Int,Int)]()
    
    for i in 0..<rank.count {
        if attendance[i] {
            let element = (i,rank[i])
            newTupleArray.append(element)
        }
    }
    // 순위를 기준으로 정렬
    newTupleArray.sort {
        $0.1 < $1.1
    }
    
    // 연산
    var result = 0
    for i in 0..<3 {
        switch i {
            case 0:
            result += newTupleArray[i].0 * 10000
            case 1:
            result += newTupleArray[i].0 * 100
            case 2:
            result += newTupleArray[i].0
            default:
            break
        }
    }
    
    // 값 출력
    return result
}
// 11:19 종료