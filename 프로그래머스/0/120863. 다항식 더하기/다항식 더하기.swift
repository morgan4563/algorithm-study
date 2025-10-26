
import Foundation
//6:49
func solution(_ polynomial:String) -> String {
    // result는 Int배열 0번인덱스는 x의 값, 1번인덱스는 상수값
    // 다항식을 공백을 이용한 분리
    // 덧셈만 있음으로 + 무시, last가 x인지만 판별
    // 마지막이 x일 경우 result 배열의 0번인덱스, x가 아닐경우 1번 인덱스의 값 추가
    // 각각의 배열의 원소가 0 인경우 제외하고 resultString에 반영, 둘다 숫자 있을때는 x + y 형태로 스트링 생성

    var result = [0,0]
    let polyArr = polynomial.split(separator: " ")

    for e in polyArr {
        if e.last == "x" {
            var ele = String(e)

            let _ = ele.removeLast()
            if ele.count != 0 {
                result[0] += Int(ele)!
            } else {
                result[0] += 1
            }
        } else if e != "+" {
            let constant = Int(String(e))!
            result[1] += constant
        }
    }

    var first = ""
    if result[0] != 0 {
        if result[0] == 1 {
            first = "x"        
        } else {
    		first = "\(result[0])x"
        }
    }

    var second = ""
    if result[1] != 0 {
        second = "\(result[1])"
    }

    if !first.isEmpty && !second.isEmpty {
		return "\(first) + \(second)"
    } else if !first.isEmpty {
		return "\(first)"
    } else {
		return "\(second)"
    }
}
//7:14
