import Foundation

let N = Int(readLine()!)!
var result = 0
for _ in 0..<N {
    let input = Array(readLine()!)
    if input.count == 1 {
        result += 1
        continue
    } // 문자 하나이면 그냥 리저트 1업 하고 다음 문자 받기
    
    var resultflag = false
    for i in 1..<input.count {
        var flag = true
        // 문자하나만 나오고 바뀔수도 있으니까 첫 문자부터 다음문자 나온다고 터지는게 아님
        // 문자 하나 나온뒤 다음 문자랑 다르면 일단 문을 닫아
        // 문이 닫친 상태에서 같은 문자가 나오면 리저트 하나 올리고 해당 반복문 종료
        
        for j in i..<input.count {
            if input[i-1] != input[j] {
                //i0 j1.2.3.4
                flag = false
            }
            if flag == false && input[i-1] == input[j] {
                resultflag = true
            }
        }
    }
    if !resultflag {
        result += 1
    }
}

print(result)
