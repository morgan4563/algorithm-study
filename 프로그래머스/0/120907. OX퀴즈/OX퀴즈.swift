import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result = [String]()
    //퀴즈 반복 돌면서 하나씩 검증
    for q in quiz {
        //공백을 기준으로 나눠서 배열로 만듬
        let qArr = q.split(separator: " ")
        //-,+ 를 2번 인덱스의 앞에 붙친다음 Int로 변경
        let first = Int(qArr[0])!
        let second = Int(qArr[2])!
        
        // 기호 별로 switch
        switch qArr[1] {
            case "+":
            result.append(first+second == Int(qArr[4])! ? "O" : "X")
            case "-":
            result.append(first-second == Int(qArr[4])! ? "O" : "X")
            default:
            break
        }
        
        //위의 계산 결과를 4번 인덱스와 비교
        
        //true면 result에 "O"추가 false면 result에 "X"추가
    }
    return result
}