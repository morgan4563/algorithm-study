import Foundation
// 7:38
func solution(_ A:String, _ B:String) -> Int {
    var A = Array(A)
    var B = Array(B)
    
    var result = 0 
    // A의 갯수 - 1 회만큼 맨뒤 단어 빼서 앞으로 당기기
    for _ in 0..<A.count {
        //A랑 B 검증 같으면 result 출력
        if A == B {
            return result
        }
        let last = A.removeLast()
        A = [last] + A
        result += 1
    }
    return -1
}
//7:43